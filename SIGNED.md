##### Signed by https://keybase.io/hutt
```
-----BEGIN PGP SIGNATURE-----

iQEcBAABCgAGBQJU17lKAAoJEJhl/lQF9JAuOg0H/jHBWLLPoNHK+gRZYiwAi3JL
hGXWZpmmi+guEDFvCMQq3iNeVLLUK6WDCe6nhkwEfYPMHw6hD4iBrPhf77vm4mvL
OpZpTriWAx1kMPDtV9lcr5V2H/nlS1FPgaBpPwR34zDUcARRR68XO3lSymNmLrwz
LUuEqmeCPXwaWuH0Mn273Lshti9N01kGKa+UWQeR0Z6H6q+alu2jl4H4wiU/tYky
8iBWigxwdKoaftlJUmc16jdh4cGCskS92vu8paO890H+N06uKT9dSMSGNKtI/68m
rj+T2RuFf5culmnQhB+efexwkfk+6A/B+LNIuWzpj3lNGQS3rf2EQshKe+TevhA=
=+Z6n
-----END PGP SIGNATURE-----

```

<!-- END SIGNATURES -->

### Begin signed statement 

#### Expect

```
size   exec  file               contents                                                                                                                         
             ./                                                                                                                                                  
535            .gitignore       41489da3af786911e0781bf2240573daab3af7fe28bc4220a2c875e4264c5788                                                                 
18024          .zedstate        7fb8d035b7269c8ebc67162049ce9c90343b7c387012089360d9c1a6777ae30b                                                                 
35141          LICENSE.md       589ed823e9a84c56feb95ac58e7cf384626b9cbf4fda2a907bc36e103de1bad2                                                                 
449            README.md        8415865ef5c1822d327cf30cfb8b197e4cf72d8590e132f496cb2dbc21ac7ce2                                                                 
324            about.lua        b52eda16ef550157dfdca396bb4e40c07992531aec99e19f253ee88bcf08b40e                                                                 
916            help.lua         5e718019296f32563df6b17649e1b3655b01c23e3a12200b1e8a1cc2aff354fc                                                                 
               json/                                                                                                                                             
17997  x         json.lua       29d471ffb5391d82cd4485d5b077355fd3bce62cd3ad23ca28193b01392c63b3                                                                 
4367   x         rpc.lua        d92a38a6e7bc6edad7f6bd4eb124b3544cfd496099179ade2ac9345941206017|2883710b0dc9c5b18c9169b60b4f84a7951634119a55e60e3a60564ed7d363f7
3136   x         rpcserver.lua  65753934b91ad18dd06d2b59ad13888ffa5d1cad6d0dfaa2052e0d096c106696|a3128b8b87c241d196a393d8b09c9a26117bc628bcf2e8f57e5b46d4a11fbedd
1962           randomInt.lua    08867b363f39869d16845347549df9c96a2c88d337670df9dec641d5519cdb64                                                                 
4187           rmsg.lua         45331c74ce39449b38f598b87dc28605a1860dd16cca1bbf78c1c9313206e6ea                                                                 
8621           strings.coffee   d61fb3e3edd5dfdc14e154590516cd1942ea12ae80f345084e1f88677c62efd3                                                                 
```

#### Ignore

```
/SIGNED.md
```

#### Presets

```
git      # ignore .git and anything as described by .gitignore files
dropbox  # ignore .dropbox-cache and other Dropbox-related files    
kb       # ignore anything as described by .kbignore files          
```

<!-- summarize version = 0.0.9 -->

### End signed statement

<hr>

#### Notes

With keybase you can sign any directory's contents, whether it's a git repo,
source code distribution, or a personal documents folder. It aims to replace the drudgery of:

  1. comparing a zipped file to a detached statement
  2. downloading a public key
  3. confirming it is in fact the author's by reviewing public statements they've made, using it

All in one simple command:

```bash
keybase dir verify
```

There are lots of options, including assertions for automating your checks.

For more info, check out https://keybase.io/docs/command_line/code_signing