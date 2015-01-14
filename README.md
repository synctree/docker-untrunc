docker untrunc
==============

Restore a damaged (truncated) mp4, m4v, mov, 3gp video. Provided you have a similar not broken video. And some luck.

This comes from: [untrunc](https://github.com/ponchio/untrunc) by ponchio

## Runit!

    docker run -v /some/directory:/volume/in/container -it synctree/untrunc /volume/in/container/good-file.mp4 /volume/in/container/bad-file.mp4

