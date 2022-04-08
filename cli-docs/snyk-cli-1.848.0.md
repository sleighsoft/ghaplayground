
Snyk CLI
  Snyk CLI scans and monitors your projects for security vulnerabilities and license issues.
  Visit the Snyk website https://snyk.io for more information. See the CLI documentation
  https://docs.snyk.io/features/snyk-cli for details.

How to get started
  1. Authenticate by running snyk auth.
  2. Test your local project with snyk test.
  3. Get alerted for new vulnerabilities with snyk monitor.

Available commands
  To learn more about each Snyk CLI command, use the --help option, for example, snyk auth --help or
  snyk container --help. You can also use the help command: snyk help [<COMMAND>].

  snyk auth
    Authenticate Snyk CLI with a Snyk account.

  snyk test
    Test a project for open source vulnerabilities and license issues.

  snyk monitor
    Snapshot and continuously monitor a project for open source vulnerabilities and license issues.

  snyk container
    Test container images for vulnerabilities.

  snyk iac
    Find security issues in Infrastructure as Code files.

  snyk code
    Find security issues using static code analysis.

  snyk log4shell
    Find Log4Shell vulnerability.

  snyk config
    Manage Snyk CLI configuration.

  snyk policy
    Display the .snyk policy for a package.

  snyk ignore
    Modify the .snyk policy to ignore stated issues.

Debug
  Use -d option to output the debug logs.

Configure the Snyk CLI
  You can use environment variables to configure the Snyk CLI and also set variables to configure the
  Snyk CLI to connect with the Snyk API. See Configure the Snyk CLI
  https://docs.snyk.io/features/snyk-cli/configure-the-snyk-cli.

