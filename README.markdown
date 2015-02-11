Computing node
==============


What is it?
-----------

This is Vagrant/itamae recipe to build virtual machines for machine learning.
The VM consists of:

- [CUDA 6.5](https://developer.nvidia.com/cuda-toolkit)
- [Torch](http://torch.ch/)
- [Caffe](http://caffe.berkeleyvision.org/)
- [R](http://cran.r-project.org/)


How to use
----------

You can build up virtual machine by the following commands.

```
$ vagrant plugin install vagrant-itamae
$ vagrant up
```

If you want a virtual machine without GPU support, specify `CPU_ONLY=1` environment variable when you execute `vagrant up`:

```
$ vagrant plugin install vagrant-itamae
$ CPU_ONLY=1 vagrant up
```


Author
------

- @mrkn
