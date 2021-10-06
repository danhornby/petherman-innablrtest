# innablrtest
# Project requirements
Thank you for agreeing to complete our technical challenge! The challenge is based on a real-life case we were given from a client.  The Challenge:
A large micro services project has set course to develop a considerable number of REST API’s in the next 12 months. They are aiming to use a standard set of technologies and patterns to bring consistency to their delivery.
As part of this, you are required to build a boilerplate git repository that includes the basic scaffolding required for each team to kick off their projects.
Your repository should define a comprehensive pipeline that has at least the following stages: test, build, publish.
As part of this, a simple REST API should also be present in the repository that has a root / endpoint that returns a basic “Hello World” message, and a /status endpoint that returns the following response:
{
  "my-application": [
    {
      "version": "1.0",
      "description": "my-application's description.",
      "sha": "abc53458585"
    }
  ]
}
Last but not least, your application is packaged and published to the project’s Docker image repository.Considerations:
§  You are asked to use the following technologies and make recommendations where required:
§  Code repository: GitHub
§  Pipelines: GitHub Actions
§  API’s programming language: NodeJS or Golang ideally, but feel free to use something you are more accustomed to.
§  Image repository: GitHub Packages: ghcr.io
§  The 3 fields in the response above are not hardcoded.
§  sha is your git branch’s most recent commit hash (last commit SHA) at build time.
§  description and version are supplied through a metadata file residing on the repo.
§  Add simple test cases for your application.
§  The repository should be all in all well documented. Provide comments in code where necessary and a nicely formatted README file.
§  Are there any limitations to your implementation? Any risks associated? If so, explain those in the README file.

# Alterations to requirements
+ I am using python instead of Golang or node.js as I am most comfortable with it

# Resources used
https://runnable.com/docker/python/dockerize-your-flask-application


# Risks and security considerations
+ The deadsnakes repository could be removed and cause build issues in the future, to mitigate this, you would use packages from repositories within the organisation
+ Packages installed in the python requirements.txt are also currenlty unscanned and may have vulnerabilites, in a production environment use of productionised prescanned artifacts would be ideal
+ We should also host our own runners rather than using the GitHub provided ones.