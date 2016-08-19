# sign in

Sign in account.

## Request


* URL： `api/v1/sign_in`
* Action： `POST`
* Data:

```
{
    "name": "zzbTest",
    "pwd": "zzbTest123456"
}
```

	
## Response


### Success

* 200

```
{
  "uid": 1
}
```

**Warning**: Auth token will be stored with key: ```Authorization``` in ```Headers```.

```Authorization: dd28cfa0b577055666e68e4bba9e5eecdf045ed77d554db701ec5e051dcfeba190bb31b196daaa5ff5468d70a8f82a531c112c9a23416c6bc1568da7b62bb3ac```

### Failure

