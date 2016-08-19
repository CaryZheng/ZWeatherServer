# get user info

Get user info.

## Request


* URL： `api/v1/user_info?user_id=<user_id>`
* Action： `GET`

**Warning**: Auth token need be stored with key: ```Authorization``` in ```Headers```.

```Authorization: dd28cfa0b577055666e68e4bba9e5eecdf045ed77d554db701ec5e051dcfeba190bb31b196daaa5ff5468d70a8f82a531c112c9a23416c6bc1568da7b62bb3ac```

	
## Response


### Success

* 200

```
{
  "name": "zzbTest",
  "uid": 1
}
```

### Failure

