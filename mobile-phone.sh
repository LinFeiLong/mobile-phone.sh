# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    mobile-phone.sh                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: flime <flime@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2013/12/03 22:47:03 by flime             #+#    #+#              #
#    Updated: 2013/12/04 00:34:04 by flime            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/sh

count = 1
for i in $*
do
	count=$(($count +1))
	echo "----------------------------------"
	echo "$count. $i" && ldapsearch -Q uid="$i" | grep -A 0 cn: && ldapsearch -Q uid="$i" | grep "mobile-phone"
done
