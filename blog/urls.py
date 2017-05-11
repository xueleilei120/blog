# -*- coding: utf-8 -*-
"""blog URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.9/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url
import xadmin
from django.conf.urls import url, include
from django.views.static import serve

from users.views import IndexView
from users.views import LoginView, RegisterView, LogoutView
from blog.settings import MEDIA_ROOT

urlpatterns = [
    url(r'^xadmin/', xadmin.site.urls),
    url(r'^$', IndexView.as_view(), name="index"),
    # 用户
    url(r'^users/', include('users.urls', namespace="users")),
    # 笔记
    url(r'^notes/', include('note.urls', namespace="notes")),

    # 配置上传文件的访问处理函数
    url(r'^media/(?P<path>.*)$', serve, {"document_root": MEDIA_ROOT}),

    # 富文本编辑器
    url(r'^ueditor/', include('DjangoUeditor.urls')),

    # 玩家登陆
    url(r'^login/$', LoginView.as_view(), name="login"),    # LoginView.as_view() 注意这里是要家括号的
    # 玩家退出
    url(r'^logout/$', LogoutView.as_view(), name="logout"),
    # 注册
    url(r'^register/$', RegisterView.as_view(), name="register"),
    # 邮箱验证码
    url(r'^captcha/', include('captcha.urls')),
]


#全局404页面配置
handler404 = 'users.views.page_not_found'
handler500 = 'users.views.page_error'