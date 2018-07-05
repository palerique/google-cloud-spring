package br.com.casadocodigo.loja.configuration;

import java.util.Locale;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

@Configuration
public class JsonViewResolver implements ViewResolver {

  @Override
  public View resolveViewName(String viewName, Locale locale) {
    MappingJackson2JsonView jsonView = new MappingJackson2JsonView();
    jsonView.setPrettyPrint(true);

    return jsonView;
  }

}
