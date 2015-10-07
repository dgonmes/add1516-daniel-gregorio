#!/usr/bin/ruby
# encoding: utf-8

users = `cat userlist.txt`

userlist = users.split("\n")

userlist.each { |usu|
system("userdel -f #{usu}")
}
