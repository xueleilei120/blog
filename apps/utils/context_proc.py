#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
@author: liuyc
@file: context_porc.py
@time: 2017/4/16 18:32
@describe:
"""
from django.db.models import Count


from note.models import Category


# 使用context processro去提供一些context内容中公共的部分，也就是返回一个字典而已
def custom_proc(request):
    # 分类目录
    categories = Category.objects.annotate(
        num_notes=Count('notes')).filter(num_notes__gt=0).order_by('name')

    return {'CATEGORIES': categories}