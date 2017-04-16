 for model, admin_class in self._registry.iteritems():
            view_urls = [url(
                path, wrap(
                    self.create_model_admin_view(clz, model, admin_class)),
                name=name % (model._meta.app_label, model._meta.model_name))
                for path, clz, name in self._registry_modelviews]
            urlpatterns += [
                    url(r'^%s/%s/' % ( model._meta.app_label, model._meta.model_name), include(view_urls))
                ]