  >   meta(commit: \"1e64dc7136eae9c6b88e4ab831322f3c72a5c0e4\", topic:\"tool/warn\", add: [
  >      { path:\"a/b/c\", data: [\"{\\\\\"location\\\\\":\\\\\"1234\\\\\",\\\\\"message\\\\\":\\\n \\\\\"m1\\\\\"}\"] }
  >   ])
      "meta": true
  $ git diff ${EMPTY_TREE}..FETCH_HEAD
  diff --git a/tool/warn/~/1e/64d/c713/1e64dc7136eae9c6b88e4ab831322f3c72a5c0e4/a/b/c b/tool/warn/~/1e/64d/c713/1e64dc7136eae9c6b88e4ab831322f3c72a5c0e4/a/b/c
  new file mode 100644
  index 0000000..11474f8
  --- /dev/null
  +++ b/tool/warn/~/1e/64d/c713/1e64dc7136eae9c6b88e4ab831322f3c72a5c0e4/a/b/c
  @@ -0,0 +1 @@
  +43a0f340d27ea912af7a1cfbaa491cd117564a4e:{"location":"1234","message":"m1"}
  \ No newline at end of file
  >   meta(commit: \"1e64dc7136eae9c6b88e4ab831322f3c72a5c0e4\", topic:\"tool/warn\", add: [
  >      { path:\"a/b/c\", data: [\"{\\\\\"location\\\\\":\\\\\"1235\\\\\",\\\\\"message\\\\\":\\\\\"foobar\\\\\"}\"] }
  >   ])
      "meta": true
  $ git diff ${EMPTY_TREE}..FETCH_HEAD
  diff --git a/tool/warn/~/1e/64d/c713/1e64dc7136eae9c6b88e4ab831322f3c72a5c0e4/a/b/c b/tool/warn/~/1e/64d/c713/1e64dc7136eae9c6b88e4ab831322f3c72a5c0e4/a/b/c
  new file mode 100644
  index 0000000..f81b303
  --- /dev/null
  +++ b/tool/warn/~/1e/64d/c713/1e64dc7136eae9c6b88e4ab831322f3c72a5c0e4/a/b/c
  @@ -0,0 +1,2 @@
  +43a0f340d27ea912af7a1cfbaa491cd117564a4e:{"location":"1234","message":"m1"}
  +c6058f73704cfe1879d4ef110910fc8b50ff04c7:{"location":"1235","message":"foobar"}
  \ No newline at end of file
  >   meta(commit: \"1e64dc7136eae9c6b88e4ab831322f3c72a5c0e4\", topic:\"tool/warn\", add: [
  >      { path:\"a/b/d\", data: [
  >        \"{\\\\\"location\\\\\":\\\\\"1235\\\\\",\\\\\"message\\\\\":\\\\\"foobar\\\\\"}\",
  >        \"{\\\\\"location\\\\\":\\\\\"1236\\\\\",\\\\\"message\\\\\":\\\\\"foobar\\\\\"}\"
  >   ])
      "meta": true
  $ git diff ${EMPTY_TREE}..FETCH_HEAD
  diff --git a/tool/warn/~/1e/64d/c713/1e64dc7136eae9c6b88e4ab831322f3c72a5c0e4/a/b/c b/tool/warn/~/1e/64d/c713/1e64dc7136eae9c6b88e4ab831322f3c72a5c0e4/a/b/c
  new file mode 100644
  index 0000000..f81b303
  --- /dev/null
  +++ b/tool/warn/~/1e/64d/c713/1e64dc7136eae9c6b88e4ab831322f3c72a5c0e4/a/b/c
  @@ -0,0 +1,2 @@
  +43a0f340d27ea912af7a1cfbaa491cd117564a4e:{"location":"1234","message":"m1"}
  +c6058f73704cfe1879d4ef110910fc8b50ff04c7:{"location":"1235","message":"foobar"}
  \ No newline at end of file
  diff --git a/tool/warn/~/1e/64d/c713/1e64dc7136eae9c6b88e4ab831322f3c72a5c0e4/a/b/d b/tool/warn/~/1e/64d/c713/1e64dc7136eae9c6b88e4ab831322f3c72a5c0e4/a/b/d
  new file mode 100644
  index 0000000..249fd13
  --- /dev/null
  +++ b/tool/warn/~/1e/64d/c713/1e64dc7136eae9c6b88e4ab831322f3c72a5c0e4/a/b/d
  @@ -0,0 +1,2 @@
  +53296c9e4dbc2b6ad15e15b2fc66870cd0548515:{"location":"1236","message":"foobar"}
  +c6058f73704cfe1879d4ef110910fc8b50ff04c7:{"location":"1235","message":"foobar"}
  \ No newline at end of file
  >   path, text, meta(topic:\"tool/warn\") {
  >     data {
  >       id
  >       message: string(at: \"/message\")
  >       location: string(at: \"/location\")
  >   path,meta(topic:\"tool/warn\") {
            "meta": {
              "data": [
                  "id": "53296c9e4dbc2b6ad15e15b2fc66870cd0548515",
                  "message": "foobar",
                  "location": "1236"
                  "id": "c6058f73704cfe1879d4ef110910fc8b50ff04c7",
                  "message": "foobar",
                  "location": "1235"
            "meta": {
              "data": [],
            "meta": {
              "count": 4
            "meta": {
              "count": 4
            "meta": {
  >   path, text, meta(topic:\"tool/warn\") {
  >     data {
  >       position: string(at: \"/location\"), text: string(at: \"message\")
  >   path,meta(topic:\"tool/warn\") {
            "meta": {
              "data": [
                  "position": "1236",
                  "text": null
                  "position": "1235",
                  "text": null
            "meta": {