import importlib
import logging

logger = logging.getLogger(__name__)


class ImportFactory:
    @staticmethod
    def import_class(module_class_string, super_cls: type = None):
        """
        :param module_class_string: full name of the class to create an object of
        :param super_cls: expected super class for validity, None if bypass
        :param kwargs: parameters to pass
        :return:
        """
        module_name, class_name = module_class_string.rsplit(".", 1)
        module = importlib.import_module(module_name)
        assert hasattr(module, class_name), "class {} is not in {}".format(class_name, module_name)
        logger.debug('reading class {} from module {}'.format(class_name, module_name))
        found_cls = getattr(module, class_name)
        if super_cls is not None:
            assert issubclass(found_cls, super_cls), "class {} should inherit from {}".format(class_name, super_cls.__name__)
        return found_cls
