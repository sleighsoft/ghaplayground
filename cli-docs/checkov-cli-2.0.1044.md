usage: checkov [-h] [-v] [-d DIRECTORY] [--add-check] [-f FILE]
               [--skip-path SKIP_PATH]
               [--external-checks-dir EXTERNAL_CHECKS_DIR]
               [--external-checks-git EXTERNAL_CHECKS_GIT] [-l]
               [-o {cli,cyclonedx,json,junitxml,github_failed_only,sarif}]
               [--output-file-path OUTPUT_FILE_PATH] [--output-bc-ids]
               [--include-all-checkov-policies] [--quiet] [--compact]
               [--framework {arm,bicep,cloudformation,dockerfile,github_configuration,github_actions,gitlab_configuration,bitbucket_configuration,helm,json,yaml,kubernetes,kustomize,sca_package,sca_image,secrets,serverless,terraform,terraform_plan,all} [{arm,bicep,cloudformation,dockerfile,github_configuration,github_actions,gitlab_configuration,bitbucket_configuration,helm,json,yaml,kubernetes,kustomize,sca_package,sca_image,secrets,serverless,terraform,terraform_plan,all} ...]]
               [--skip-framework {arm,bicep,cloudformation,dockerfile,github_configuration,github_actions,gitlab_configuration,bitbucket_configuration,helm,json,yaml,kubernetes,kustomize,sca_package,sca_image,secrets,serverless,terraform,terraform_plan} [{arm,bicep,cloudformation,dockerfile,github_configuration,github_actions,gitlab_configuration,bitbucket_configuration,helm,json,yaml,kubernetes,kustomize,sca_package,sca_image,secrets,serverless,terraform,terraform_plan} ...]]
               [-c CHECK] [--skip-check SKIP_CHECK]
               [--run-all-external-checks] [-s] [--soft-fail-on SOFT_FAIL_ON]
               [--hard-fail-on HARD_FAIL_ON] [--bc-api-key BC_API_KEY]
               [--prisma-api-url PRISMA_API_URL] [--docker-image DOCKER_IMAGE]
               [--dockerfile-path DOCKERFILE_PATH] [--repo-id REPO_ID]
               [-b BRANCH] [--skip-download] [--no-guide]
               [--skip-suppressions] [--skip-policy-download] [--skip-fixes]
               [--download-external-modules DOWNLOAD_EXTERNAL_MODULES]
               [--var-file VAR_FILE]
               [--external-modules-download-path EXTERNAL_MODULES_DOWNLOAD_PATH]
               [--evaluate-variables EVALUATE_VARIABLES] [-ca CA_CERTIFICATE]
               [--repo-root-for-plan-enrichment REPO_ROOT_FOR_PLAN_ENRICHMENT]
               [--config-file CONFIG_FILE] [--create-config CREATE_CONFIG]
               [--show-config] [--create-baseline] [--baseline BASELINE]
               [--skip-cve-package SKIP_CVE_PACKAGE]

Infrastructure as code static analysis

optional arguments:
  -h, --help            show this help message and exit
  -v, --version         version
  -d DIRECTORY, --directory DIRECTORY
                        IaC root directory (can not be used together with
                        --file).
  --add-check           Generate a new check via CLI prompt
  -f FILE, --file FILE  IaC file(can not be used together with --directory)
  --skip-path SKIP_PATH
                        Path (file or directory) to skip, using regular
                        expression logic, relative to current working
                        directory. Word boundaries are not implicit; i.e.,
                        specifying "dir1" will skip any directory or
                        subdirectory named "dir1". Ignored with -f. Can be
                        specified multiple times.
  --external-checks-dir EXTERNAL_CHECKS_DIR
                        Directory for custom checks to be loaded. Can be
                        repeated
  --external-checks-git EXTERNAL_CHECKS_GIT
                        Github url of external checks to be added. you can
                        specify a subdirectory after a double-slash //. cannot
                        be used together with --external-checks-dir
  -l, --list            List checks
  -o {cli,cyclonedx,json,junitxml,github_failed_only,sarif}, --output {cli,cyclonedx,json,junitxml,github_failed_only,sarif}
                        Report output format. Add multiple outputs by using
                        the flag multiple times (-o sarif -o cli)
  --output-file-path OUTPUT_FILE_PATH
                        Name for output file. The first selected output via
                        output flag will be saved to the file (default output
                        is cli)
  --output-bc-ids       Print Bridgecrew platform IDs (BC...) instead of
                        Checkov IDs (CKV...), if the check exists in the
                        platform
  --include-all-checkov-policies
                        When running with an API key, Checkov will omit any
                        policies that do not exist in the Bridgecrew or Prisma
                        Cloud platform, except for local custom policies
                        loaded with the --external-check flags. Use this key
                        to include policies that only exist in Checkov in the
                        scan. Note that this will make the local CLI results
                        different from the results you see in the platform.
                        Has no effect if you are not using an API key. Use the
                        --check option to explicitly include checks by ID even
                        if they are not in the platform, without using this
                        flag.
  --quiet               in case of CLI output, display only failed checks
  --compact             in case of CLI output, do not display code blocks
  --framework {arm,bicep,cloudformation,dockerfile,github_configuration,github_actions,gitlab_configuration,bitbucket_configuration,helm,json,yaml,kubernetes,kustomize,sca_package,sca_image,secrets,serverless,terraform,terraform_plan,all} [{arm,bicep,cloudformation,dockerfile,github_configuration,github_actions,gitlab_configuration,bitbucket_configuration,helm,json,yaml,kubernetes,kustomize,sca_package,sca_image,secrets,serverless,terraform,terraform_plan,all} ...]
                        filter scan to run only on specific infrastructure
                        code frameworks
  --skip-framework {arm,bicep,cloudformation,dockerfile,github_configuration,github_actions,gitlab_configuration,bitbucket_configuration,helm,json,yaml,kubernetes,kustomize,sca_package,sca_image,secrets,serverless,terraform,terraform_plan} [{arm,bicep,cloudformation,dockerfile,github_configuration,github_actions,gitlab_configuration,bitbucket_configuration,helm,json,yaml,kubernetes,kustomize,sca_package,sca_image,secrets,serverless,terraform,terraform_plan} ...]
                        filter scan to skip specific infrastructure code
                        frameworks. will be included automatically for some
                        frameworks if system dependencies are missing.
  -c CHECK, --check CHECK
                        Checks to run; any other checks will be skipped. Enter
                        one or more items separated by commas. Each item may
                        be either a Checkov check ID (CKV_AWS_123), a BC check
                        ID (BC_AWS_GENERAL_123), or a severity (LOW, MEDIUM,
                        HIGH, CRITICAL). If you use a severity, then all
                        checks equal to or above the lowest severity in the
                        list will be included. This option can be combined
                        with --skip-check. If it is, priority is given to
                        checks explicitly listed by ID or wildcard over checks
                        listed by severity. For example, if you use --check
                        CKV_123 and --skip-check LOW, then CKV_123 will run
                        even if it is a LOW severity. In the case of a tie
                        (e.g., --check MEDIUM and --skip-check HIGH for a
                        medium severity check), then the check will be
                        skipped. If you use a check ID here along with an API
                        key, and the check is not part of the BC / PC
                        platform, then the check will still be run (see
                        --include-all-checkov-policies for more info). [env
                        var: CKV_CHECK]
  --skip-check SKIP_CHECK
                        Checks to skip; any other checks will not be run.
                        Enter one or more items separated by commas. Each item
                        may be either a Checkov check ID (CKV_AWS_123), a BC
                        check ID (BC_AWS_GENERAL_123), or a severity (LOW,
                        MEDIUM, HIGH, CRITICAL). If you use a severity, then
                        all checks equal to or below the highest severity in
                        the list will be skipped. This option can be combined
                        with --check. If it is, priority is given to checks
                        explicitly listed by ID or wildcard over checks listed
                        by severity. For example, if you use --skip-check
                        CKV_123 and --check HIGH, then CKV_123 will be skipped
                        even if it is a HIGH severity. In the case of a tie
                        (e.g., --check MEDIUM and --skip-check HIGH for a
                        medium severity check), then the check will be
                        skipped. [env var: CKV_SKIP_CHECK]
  --run-all-external-checks
                        Run all external checks (loaded via --external-checks
                        options) even if the checks are not present in the
                        --check list. This allows you to always ensure that
                        new checks present in the external source are used. If
                        an external check is included in --skip-check, it will
                        still be skipped.
  -s, --soft-fail       Runs checks but always returns a 0 exit code. Using
                        either --soft-fail-on and / or --hard-fail-on
                        overrides this option, except for the case when a
                        result does not match either of the soft fail or hard
                        fail criteria, in which case this flag determines the
                        result.
  --soft-fail-on SOFT_FAIL_ON
                        Exits with a 0 exit code if only the specified items
                        fail. Enter one or more items separated by commas.
                        Each item may be either a Checkov check ID
                        (CKV_AWS_123), a BC check ID (BC_AWS_GENERAL_123), or
                        a severity (LOW, MEDIUM, HIGH, CRITICAL). If you use a
                        severity, then any severity equal to or less than the
                        highest severity in the list will result in a soft
                        fail. This option may be used with --hard-fail-on,
                        using the same priority logic described in --check and
                        --skip-check options above, with --hard-fail-on taking
                        precedence in a tie. If a given result does not meet
                        the --soft-fail-on nor the --hard-fail-on criteria,
                        then the default is to hard fail
  --hard-fail-on HARD_FAIL_ON
                        Exits with a non-zero exit code for specified checks.
                        Enter one or more items separated by commas. Each item
                        may be either a Checkov check ID (CKV_AWS_123), a BC
                        check ID (BC_AWS_GENERAL_123), or a severity (LOW,
                        MEDIUM, HIGH, CRITICAL). If you use a severity, then
                        any severity equal to or greater than the lowest
                        severity in the list will result in a hard fail. This
                        option can be used with --soft-fail-on, using the same
                        priority logic described in --check and --skip-check
                        options above, with --hard-fail-on taking precedence
                        in a tie.
  --bc-api-key BC_API_KEY
                        Bridgecrew API key or Prisma Cloud Access Key (see
                        --prisma-api-url) [env var: BC_API_KEY]
  --prisma-api-url PRISMA_API_URL
                        The Prisma Cloud API URL (see:
                        https://prisma.pan.dev/api/cloud/api-urls). Requires
                        --bc-api-key to be a Prisma Cloud Access Key in the
                        following format: <access_key_id>::<secret_key> [env
                        var: PRISMA_API_URL]
  --docker-image DOCKER_IMAGE
                        Scan docker images by name or ID. Only works with
                        --bc-api-key flag
  --dockerfile-path DOCKERFILE_PATH
                        Path to the Dockerfile of the scanned docker image
  --repo-id REPO_ID     Identity string of the repository, with form
                        <repo_owner>/<repo_name>
  -b BRANCH, --branch BRANCH
                        Selected branch of the persisted repository. Only has
                        effect when using the --bc-api-key flag
  --skip-download       Do not download any data from Bridgecrew. This will
                        omit doc links, severities, etc., as well as custom
                        policies and suppressions if using an API token. Note:
                        it will prevent BC platform IDs from being available
                        in Checkov.
  --no-guide            Deprecated - use --skip-download
  --skip-suppressions   Deprecated - use --skip-download
  --skip-policy-download
                        Deprecated - use --skip-download
  --skip-fixes          Do not download fixed resource templates from
                        Bridgecrew. Only has effect when using the API key.
  --download-external-modules DOWNLOAD_EXTERNAL_MODULES
                        download external terraform modules from public git
                        repositories and terraform registry [env var:
                        DOWNLOAD_EXTERNAL_MODULES]
  --var-file VAR_FILE   Variable files to load in addition to the default
                        files (see https://www.terraform.io/docs/language/valu
                        es/variables.html#variable-definitions-tfvars-
                        files).Currently only supported for source Terraform
                        (.tf file), and Helm chart scans.Requires using
                        --directory, not --file.
  --external-modules-download-path EXTERNAL_MODULES_DOWNLOAD_PATH
                        set the path for the download external terraform
                        modules [env var: EXTERNAL_MODULES_DIR]
  --evaluate-variables EVALUATE_VARIABLES
                        evaluate the values of variables and locals
  -ca CA_CERTIFICATE, --ca-certificate CA_CERTIFICATE
                        Custom CA certificate (bundle) file [env var:
                        BC_CA_BUNDLE]
  --repo-root-for-plan-enrichment REPO_ROOT_FOR_PLAN_ENRICHMENT
                        Directory containing the hcl code used to generate a
                        given plan file. Use with -f.
  --config-file CONFIG_FILE
                        path to the Checkov configuration YAML file
  --create-config CREATE_CONFIG
                        takes the current command line args and writes them
                        out to a config file at the given path
  --show-config         prints all args and config settings and where they
                        came from (eg. commandline, config file, environment
                        variable or default)
  --create-baseline     Alongside outputting the findings, save all results to
                        .checkov.baseline file so future runs will not re-flag
                        the same noise. Works only with `--directory` flag
  --baseline BASELINE   Use a .checkov.baseline file to compare current
                        results with a known baseline. Report will include
                        only failed checks that are new with respect to the
                        provided baseline
  --skip-cve-package SKIP_CVE_PACKAGE
                        filter scan to run on all packages but a specific
                        package identifier (denylist), You can specify this
                        argument multiple times to skip multiple packages

Args that start with '--' (eg. -v) can also be set in a config file (/Users/Ju
lian_Niedermeier/Documents/github/private/ghaplayground/.checkov.yaml or
/Users/Julian_Niedermeier/Documents/github/private/ghaplayground/.checkov.yml
or /Users/Julian_Niedermeier/.checkov.yaml or
/Users/Julian_Niedermeier/.checkov.yml or specified via --config-file). The
config file uses YAML syntax and must represent a YAML 'mapping' (for details,
see http://learn.getgrav.org/advanced/yaml). If an arg is specified in more
than one place, then commandline values override environment variables which
override config file values which override defaults.
