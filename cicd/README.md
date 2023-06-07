# How to setup CICD using Github Action and Argo CD

## Step 1 Setup Argo CD
Refer [Argo CD Guide](./argocd/README.md)

## Step 2 Setup Github workflow

Refer [Testflow Repo](https://github.com/khanhct/testflow)
</br>

Create new workflow </br>

**Sample:**
```
name: CICD Workflow Template


# Define environmental variables
env: 
  module: testflow
  sonarProjectKey: khanhct_testflow_AYh2MGffFF6yfahJTmPT

concurrency:
  group: ${{ github.workflow }}-${{ github.ref }}
  cancel-in-progress: true

# Flows
on:
  push:
    branches: [ develop, staging , main ]
  pull_request:
    branches: [ develop, staging , main ]
  workflow_dispatch:

jobs:
  # Checking code quality
  code_quality:
    name: Code Quality
    if: github.event_name == 'pull_request'
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
        with:
          token: ${{ secrets.TOKEN }}
          submodules: recursive
      - run: echo "event name is:" ${{ github.event_name }} 
      - run: echo "event type is:" ${{ github.event.action }} 
      - name: Update submodules
        id: update
        run: |
          git submodule update --init --recursive
          git submodule update --recursive --remote
      - name: Setup .NET Core
        uses: actions/setup-dotnet@v2
        with:
          dotnet-version: '6.0.x'
      - name: Build and analyze
        working-directory: ./
        run: |
          dotnet tool install --global dotnet-sonarscanner
          dotnet-sonarscanner begin /k:"${{ env.sonarProjectKey }}" /d:sonar.login="${{ secrets.SONAR_TOKEN }}" /d:sonar.host.url="${{ secrets.SONAR_HOST_URL }}" /d:sonar.pullrequest.key=${{ github.event.number }} /d:sonar.pullrequest.branch="${{github.head_ref}}" /d:sonar.pullrequest.base="${{github.base_ref}}" /d:sonar.pullrequest.provider=github /d:sonar.cs.vscoveragexml.reportsPaths="coverage.xml"
          dotnet build
          dotnet-sonarscanner end /d:sonar.login="${{ secrets.SONAR_TOKEN }}"
```

## Step 3: Trigger CD 
Change any file and make a pull request to one of braches **[ develop, staging , main ]** and enjoy it

![Github CI](./argocd/images/github_ci_trigger.png)