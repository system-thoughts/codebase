You can use [shellcheck](https://github.com/koalaman/shellcheck) to format your shell scripts.

1. shellcheck installation(take CentOS as an example)
```bash
yum -y install epel-release
yum install ShellCheck
```

2. shellcheck usage

2.1 In your editor
Take vim as an example, through [ALE](https://github.com/dense-analysis/ale), [Neomake](https://github.com/neomake/neomake), or [Syntastic](https://github.com/vim-syntastic/syntastic):

