# Satel Client Deployment
This centralized GitHub action deploys client for a webapp

## Usage 
```yml
name: "Deploy webapp"
on:
  pull_request:
    types:
      - opened
  push:
    tags:
      - "*"
    branches:
      - main  
      - "*"  
      
 build-client:
    name: Build client
    needs: [generate-variables]
    runs-on: <host_name>
    steps:   
      - name: Set up node
        uses: actions/setup-node@v2
        with:
          node-version: '14'

      - name: Deploy client
        uses: SatelCreative/satel-client-deployment@v1
        with:
          client-dir: client
          generate-type: true
   ```
   - `host_name` is `self-hosted` or the name of server where the action runner is hosted, `cosmicray` for example
   - Setup node here so dont need to install on the VM
