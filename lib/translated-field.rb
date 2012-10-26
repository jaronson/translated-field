require "translated-field/version"

module Translated
  module Field
    def self.included(base)
      base.send(:extend, ClassMethods)
      base.send(:include, InstanceMethods)
    end

    def self.set_locale(locale)
      @@locale = locale
    end

    def self.get_locale
      @@locale
    end

    @@locale = nil

    module ClassMethods
      def translate_field(field_name)
        define_method(field_name) do
          unless self.class.get_locale
            raise Error.new('No locale specifield. Call Translated::Field.set_locale before attempting to access a translated column')
          end

          I18n.backend.translate(@@locale, "activerecord.attributes.#{self.name.downcase}.#{field_name}")
        end
      end
    end

    module InstanceMethods
    end
  end
end
