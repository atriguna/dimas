def samenumber(list1, list2):
	same = []
	for i in list1:
		if i not in list2:
			same.append(i)
		else:
			print("nilai yang sama :{}".format(i))

list1 =[1,2,3,5]
list2 =[2,3,1,3,5,4,7]
samenumber(list1, list2)