<?php
  ob_start();
  session_start();

  include "src/paypal/vendor/autoload.php";
  include "src/paypal/src/Payment.php";

  $payment = new Payment;
?>

<!DOCTYPE html>
<!-- saved from url=(0025)https://www.linphone.org/ -->
<html lang="en" dir="ltr" prefix="content: http://purl.org/rss/1.0/modules/content/ dc: http://purl.org/dc/terms/ foaf: http://xmlns.com/foaf/0.1/ og: http://ogp.me/ns# rdfs: http://www.w3.org/2000/01/rdf-schema# sioc: http://rdfs.org/sioc/ns# sioct: http://rdfs.org/sioc/types# skos: http://www.w3.org/2004/02/skos/core# xsd: http://www.w3.org/2001/XMLSchema#" class="js"><!--<![endif]--><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <meta name="description" content="Linphone is an open source SIP client for HD voice/video calls, 1-to-1 and group instant messaging, conference calls etc. Available for iOS, Android, Windows, macOS and GNU/Linux.">
    <meta name="generator" content="Drupal 7 (https://www.drupal.org)">
    <link rel="canonical" href="https://www.linphone.org/">
    <link rel="shortlink" href="https://www.linphone.org/">
    <title>Oneoutlet</title>

    <meta name="viewport" content="width=device-width">
    <meta http-equiv="cleartype" content="on">
    <link rel="icon" type="image/x-icon" href="./assets/img/favicon.ico">
    <link type="text/css" rel="stylesheet" href="./assets/css/style1.css" media="all">
    <link type="text/css" rel="stylesheet" href="./assets/css/style2.css" media="all">
    <link type="text/css" rel="stylesheet" href="./assets/css/font-awesome.css" media="all">
    <link type="text/css" rel="stylesheet" href="./assets/css/style3.css" media="all">
    <script src="./assets/script/js_jQuery1.8.js"></script>
    <script src="./assets/script/js_jQuery1.1.js"></script>
    <script src="./assets/script/js_drupal.js"></script>
    <script>
      jQuery.extend(Drupal.settings, {
        "basePath": "\/",
        "pathPrefix": "",
        "ajaxPageState": {
          "theme": "simple",
          "theme_token": "jQoYhOzwVD7UC_LU7I_RLsEO3yREW1vI5rtFr1A_y2U",
          "js": {
            "sites\/all\/modules\/jquery_update\/replace\/jquery\/1.8\/jquery.js": 1,
            "misc\/jquery-extend-3.4.0.js": 1,
            "misc\/jquery-html-prefilter-3.5.0-backport.js": 1,
            "misc\/jquery.once.js": 1,
            "misc\/drupal.js": 1,
            "misc\/progress.js": 1,
            "sites\/all\/modules\/quicktabs\/js\/quicktabs.js": 1,
            "sites\/all\/themes\/simple\/js\/jquery.js": 1,
            "sites\/all\/themes\/simple\/js\/jquery-ui.js": 1,
            "sites\/all\/themes\/simple\/js\/sticky.js": 1,
            "sites\/all\/themes\/simple\/js\/tweenmax.js": 1,
            "sites\/all\/themes\/simple\/js\/timelinemax.js": 1,
            "sites\/all\/themes\/simple\/js\/ScrollToPlugin.js": 1,
            "sites\/all\/themes\/simple\/js\/scrollmagic.js": 1,
            "sites\/all\/themes\/simple\/js\/animation.gsap.js": 1,
            "sites\/all\/themes\/simple\/js\/debug.addIndicators.js": 1,
            "sites\/all\/themes\/simple\/js\/scrollify.js": 1,
            "sites\/all\/themes\/simple\/js\/app.js": 1
          },
          "css": {
            "modules\/system\/system.base.css": 1,
            "modules\/system\/system.menus.css": 1,
            "modules\/system\/system.messages.css": 1,
            "modules\/system\/system.theme.css": 1,
            "modules\/comment\/comment.css": 1,
            "modules\/field\/theme\/field.css": 1,
            "modules\/node\/node.css": 1,
            "modules\/search\/search.css": 1,
            "modules\/user\/user.css": 1,
            "sites\/all\/modules\/views\/css\/views.css": 1,
            "sites\/all\/modules\/ckeditor\/css\/ckeditor.css": 1,
            "sites\/all\/modules\/ctools\/css\/ctools.css": 1,
            "sites\/all\/modules\/quicktabs\/css\/quicktabs.css": 1,
            "sites\/all\/themes\/zen\/system.menus.css": 1,
            "sites\/all\/themes\/simple\/css\/app.css": 1,
            "sites\/all\/themes\/simple\/css\/ie.css": 1,
            "sites\/all\/themes\/simple\/css\/mobile.css": 1
          }
        },
        "better_exposed_filters": {
          "views": {
            "menu_solutions": {
              "displays": {
                "block": {
                  "filters": []
                }
              }
            },
            "menu_technical_corner": {
              "displays": {
                "block": {
                  "filters": []
                }
              }
            },
            "clone_of_slider_accueil": {
              "displays": {
                "block": {
                  "filters": []
                }
              }
            },
            "top_home_header_view": {
              "displays": {
                "block": {
                  "filters": []
                }
              }
            },
            "accueil_t_l_chargement": {
              "displays": {
                "block": {
                  "filters": []
                }
              }
            },
            "home_zone_2": {
              "displays": {
                "block": {
                  "filters": []
                }
              }
            },
            "profil_entreprise": {
              "displays": {
                "block": {
                  "filters": []
                }
              }
            },
            "profil_developper": {
              "displays": {
                "block": {
                  "filters": []
                }
              }
            },
            "profil_user": {
              "displays": {
                "block": {
                  "filters": []
                }
              }
            },
            "accueil_acutalit_s": {
              "displays": {
                "block": {
                  "filters": []
                }
              }
            },
            "footer_home_view": {
              "displays": {
                "block": {
                  "filters": []
                }
              }
            }
          }
        },
        "quicktabs": {
          "qt_accueil_profil": {
            "name": "accueil_profil",
            "tabs": [
              {
                "bid": "views_delta_profil_entreprise-block",
                "hide_title": 1
              }, {
                "bid": "views_delta_profil_developper-block",
                "hide_title": 1
              }, {
                "bid": "views_delta_profil_user-block",
                "hide_title": 1
              }
            ],
            "better_exposed_filters": {
              "views": {
                "home_zone_2": {
                  "displays": {
                    "block": {
                      "filters": []
                    }
                  }
                }
              }
            }
          }
        }
      });
    </script>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script>
      function launchGA() {
        var el = document.createElement('script');
        el.setAttribute('type', 'text/javascript');
        el.setAttribute('async', true);
        el.setAttribute('src', '//www.googletagmanager.com/gtag/js?id=G-Y1SFXSMG8T');
        document.body.append(el);
        window.dataLayer = window.dataLayer || [];

        function gtag() {
          dataLayer.push(arguments);
        }
        gtag('js', new Date());
        gtag('config', 'G-Y1SFXSMG8T', {'anonymize_ip': true});
        gtag('config', 'G-Y1SFXSMG8T', {'link_attribution': true});
      }

      void 0 === window._axcb && (window._axcb =[]);
      window._axcb.push(function (axeptio) {
        axeptio.on("cookies:complete", function (choices) {
          if (choices.google_analytics) {
            launchGA();
          }
        })
      });
    </script>
    <link rel="stylesheet" href="./assets/css/default.min.css">
    <script src="./assets/script/highlight.min.js"></script>
    <style data-styled="active" data-styled-version="5.3.1"></style>
  </head>

  <body class="html front not-logged-in no-sidebars page-node">
<!--     <p id="skip-link">
      <a href="https://www.linphone.org/#main-menu" class="element-invisible element-focusable">Jump to navigation</a>
    </p> -->
  <div id="header-sticky-wrapper" class="sticky-wrapper" style="height: 89px;"><header class="header" id="header" role="banner">
    <div class="inner">
      <a href="#main" title="Home" rel="home" class="header__logo" id="logo">
        <img src="./assets/img/logo.png" alt="Home" class="header__logo-image">
        <!-- ./assets/img/logo.png -->
      </a>
      
      <div class="header__region region region-header">
        <div id="block-block-18" class="block block-block first odd">
          <div class="headerBtnMobile">
              <span></span>
          </div>
        </div>
        
        <div id="block-system-main-menu" class="block block-system block-menu even" role="navigation">
          <h2 class="block__title block-title">Main menu</h2>
    
          <ul class="menu">
              <li class="menu__item is-leaf is-active-trail first leaf active-trail">
                <a href="#block-views-top-home-header-view-block" class="menu__link is-active-trail active-trail active">Home</a>
              </li>
              <li class="menu__item is-leaf leaf">
                <a href="#header_content_desc" class="menu__link is-active-trail active-trail" style="font-weight: 400;">Download</a>
              </li>
              <li class="menu__item is-leaf leaf"><a href="#content-header2" class="menu__link is-active-trail active-trail">Assinatura</a></li>
              <li class="menu__item is-leaf leaf"><a href="#content-installation" class="menu__link">Instalação</a></li>
              <li class="menu__item is-leaf last leaf"><a href="#" class="menu__link">Software</a></li>
          </ul>
        </div>
      </div>
    </div>
  </header></div>
    
  <div id="hors-site" class="region region-hors-site">
    <div class="inner">
      <div id="block-block-25" class="block block-block first odd">

        <h2 class="block__title block-title">Logo menu mobile</h2>

        <p><img alt="" src="./assets/img/logo.png"></p>

      </div>
      
      <div id="block-multiblock-1" class="block block-multiblock block-system block-system-main-menu-instance even">

        <h2 class="block__title block-title">Main menu</h2>

        <ul class="menu">
          <li class="menu__item is-leaf first leaf">
            <a href="#block-views-top-home-header-view-block" class="menu__link">Home</a>
          </li>
          <li class="menu__item is-leaf leaf">
            <a href="#header_content_desc" class="menu__link menuSolutions active">Download</a>
          </li>
          <li class="menu__item is-leaf leaf">
            <a href="#content-header2" class="menu__link">Assinatura</a>
          </li>
          <li class="menu__item is-leaf leaf">
            <a href="#content-installation" class="menu__link menuTechnicalCorner active">Instalação</a>
          </li>
          <li class="menu__item is-leaf leaf">
            <a href="#" class="menu__link">Software</a>
          </li>
        </ul>
      </div>
      <div id="block-block-27" class="block block-block last even"></div>
    </div>
  </div>

    <div id="main">

      <div id="content-header1" class="region region-content-header1" style="padding-bottom: 50px;">

        <div class="inner">
          <div id="block-views-top-home-header-view-block" class="block block-views first odd">


            <div class="view view-top-home-header-view view-id-top_home_header_view view-display-id-block view-dom-id-5ca9bc388c2181d901ebd5d7d7842e7b">


              <div class="view-content">
                <div>

                  <div class="header-zone-top-left">
                    <!-- <div class="logo-home-top">
                      <img typeof="foaf:Image" src="./assets/img/logo.png" width="120" height="120" alt="">
                    </div> -->


                    <h1 style="line-height: inherit;">Venda e atenda com Chatbots pelo WhatsApp</h1>

                    <h3 style="font-size: 20px; line-height: inherit;">Wa Whatsapp Marketing<br>SOFTWARE DE MARKETING EMPRESARIAL WHATSAPP</h3>


                    <p id="header_content_desc" style="font-size: 18px;">- Com envio de mensagem em Massa<br>

                      - Chat Bot de auto performance<br>

                      - Extrator de contatos google maps<br>

                      - Extrator de links de grupos de whatsapp<br>

                      - Remetente de mensagem parametrizada dinâmica</p>

                    <!-- <div class="button-zone">
                      <a href="https://www.linphone.org/products" class="btn blanc">Learn more</a>
                    /div> -->
                  </div>


                  <div class="image-left-home"><img typeof="foaf:Image" src="./assets/img/visuel-header.png" width="694" height="506" alt="" data-xblocker="passed" style="visibility: visible;"></div>
                </div>
              </div>


            </div>
          </div>
          
          <div id="block-views-accueil-t-l-chargement-block" class="block block-views last even">
            <div style="text-align: center; font-size: 24px; margin-bottom: 20px;">Wa Whatsapp Marketing Download</div>

            <h2 class="block__title block-title" style="margin-top: -1px; margin-right: 20px;">Baixe e teste por 7 dias grátis &nbsp;&nbsp;&nbsp;&nbsp;&#8594;</h2>
            <div class="view-id-accueil_t_l_chargement view-display-id-block view-dom-id-b99d0055b119396f1e22af5c2929ae5f">
              
              <div class="views-row views-row-4 views-row-even">
                <a href="http://Oneoutlet.site/src/setup.exe" title="download this !" id="download_count"><span><img typeof="foaf:Image" src="./assets/img/windows.png" width="199" height="35" alt=""></span>
                </a>
              </div>   
            </div>
          </div>

        </div>
      </div>
    </div>

      <!-- Slider Horizontal -->
      <div id="content-slider" style="padding-top: 0; background-color: white;">
        <div class="inner">

          <div id="pinContainer">
            <div id="slideContainer">
              <div id="block-views-clone-of-slider-accueil-block" class="block block-views first last odd">


                <div class="view view-clone-of-slider-accueil view-id-clone_of_slider_accueil view-display-id-block view-dom-id-58f1bf79e708490953ecf3a17333d6a9">


                  <div class="view-content">


                    <section class="panel">
                      <div class="contentpp  blue">

                        <p class="title-panel">Wa Whatsapp Marketing</p>

                        <div class="content">
                          <div class="txt-content">
                            <p class="contentpp_des">
                              Wa Whatsapp Marketing é um software Windows que roda no PC para usar com web.whatsapp.com.<br />
                              Uma solução para enviar mensagens automaticamente para seus clientes em massa e Grupos.<br />
                              O Wa WhatsApp Marketing Software com o Google Map Extractor integrado oferece vários recursos, como chatbots dinâmicos, resposta automática, importação/exportação de conteúdo, envio de mensagens personalizadas, suporte à funcionalidade multilíngue e muito mais.
                            </p>
                            <ul>
                              <li>
                                <p class="contentpp_des">
                                  <strong>Seus clientes estão migrando para experiências online.</strong>

                                </p>
                                <p></p>
                              </li>
                              <li>
                                <p class="contentpp_des">
                                  <strong>Sua interação com o cliente precisa acompanhar.</strong>

                                </p>
                                <p></p>
                              </li>
                            </ul>
                            <p>&nbsp;</p>
                          </div>

                          <div class="txt-content">
                            <ul>
                              <li>
                                <p class="contentpp_des">
                                  <strong>Automatize respostas para perguntas comuns</strong>

                                </p>
                                <p></p>
                              </li>
                              <li>
                                <p class="contentpp_des">
                                  <strong>Processe pedidos, solicitações e pagamentos em tempo real</strong>
                                </p>
                                <p></p>
                              </li>
                              <li>
                                <p class="contentpp_des">
                                  <strong>Entregue conversas de alto impacto</strong>
                                </p>
                                <p></p>
                              </li>

                              <li>
                                <p class="contentpp_des">
                                  <strong>Analise com painéis</strong>
                                </p>
                                <p></p>
                              </li>

                              <li>
                                <p class="contentpp_des">
                                  <strong>Amplie sua escala com chatbots dinâmicos</strong>


                                </p>
                                <p></p>
                              </li>

                            </ul>
                            <p>&nbsp;</p>
                          </div>
                        </div>

                        <div class="title-panel">

                          <h3 style="padding: 10px 0;color: white;">Menos tempo de espera significa soluções mais rápidas

                          </h3>
                          <h3 style="color: white;">Você poupa tempo dos clientese dá as respostas que eles precisam</h3>


                        </div>
                        <!-- <a href="https://www.linphone.org/technical-corner/liblinphone" class="link">READ MORE</a> -->
                      </div>
                    </section>
                  </div>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="download_quick" style="margin-top: 30px; padding: 0 50px 0 50px;">
        <div id="block-views-accueil-acutalit-s-block" class="block block-views first odd">
          <h2 style="text-align: center; color: #ff733b; line-height: inherit;">Simplifique e ofereça uma ótima experiência para seus clientes</h2>
          <div style="display: flex; gap: 10vw; text-align:center; justify-content: center; margin: 50px; flex-wrap: wrap;">
            <div style="border: 2px solid #73aecc; border-radius: 10px; padding: 20px;">
              <p style="font-size: 20px; font-weight: bold;">43%</p>
              <p style="font-size: 20px;">de perguntas comuns</p>
              <p style="font-size: 20px;">resolvidas instantaneamente</p>
            </div>
            <div style="border: 2px solid #73aecc; border-radius: 10px; padding: 20px;">
              <p style="font-size: 20px; font-weight: bold;">55%</p>
              <p style="font-size: 20px;">de melhoria nos tempos</p>
              <p style="font-size: 20px;">de resposta ao cliente</p>
            </div>
          </div>
          <div>
            <p style=" font-size: 27px; font-weight: bold; letter-spacing: normal; text-align: left;line-height: inherit; color: #595959;">Construa seu Chat Bot perfeito</p>
            <p style=" font-size: 27px; font-weight: bold; letter-spacing: normal; text-align: left;line-height: inherit; color: #595959; margin-top: 30px;">Resoluções mais rápidas para seus clientes</p>
            <p style=" font-size: 27px; font-weight: bold; letter-spacing: normal; text-align: left; line-height: inherit;color: #595959; margin-top: 30px;">Bots personalizados fazem perguntas certas para priorizar e encaminhar automaticamente novas conversas para um suporte eficiente.</p>
          </div>
          <div style="text-align: center; margin: 40px; font-size: 18px;">
            Baixe agora mesmo Wa. Whatsapp Marketing no seu computador e teste 7 dias grátis e veja o impacto que um atendimento de auto performance pode trazer para seu negócio.
            Tutorias e suporte por email ou via whatsapp.
          </div>
        </div>
      </div>

      <div id="content-header2" class="region region-content-header2">

        <div class="inner">
          <div id="block-views-home-zone-2-block" class="block block-views first odd"></div>
          <div id="block-quicktabs-accueil-profil" class="block block-quicktabs last even">

            <h2 class="block__title block-title">Accueil profil</h2>

            <div id="quicktabs-accueil_profil" class="quicktabs-wrapper quicktabs-style-nostyle jquery-once-1-processed">

              <div id="quicktabs-container-accueil_profil" class="quicktabs_main quicktabs-style-nostyle">
                <div id="quicktabs-tabpage-accueil_profil-0" class="quicktabs-tabpage">
                  <div id="block-views-profil-entreprise-block" class="block block-views first odd">


                    <div class="view view-profil-entreprise view-id-profil_entreprise view-display-id-block view-dom-id-02e7d66bf8ad29b58c423ffc715aaa05">


                      <div class="view-content view_payment_dlg" style="background-image: linear-gradient(to bottom,#004852,#00899b);">

                        <div class="views-row views-row-2 views-row-even payment_dlg">

                          <div class="views-field" style="height: 134px;margin: 0px auto 20px auto;display: flex;justify-content: center;align-items: center;">
                            <div class="" style="width: 100%;"><h3 style="color: white; font-size: 25px;">Plano Plus</h3></div>
                          </div>
                          <div class="views-field views-field-title">
                            <h3 class="field-content" style="font-size: 24px;">R$ 89,90/mês</h3>

                          </div>
                          <div class="views-field views-field-field-r-sum-profil">
                            <p style="color: white;">- Chat bot<br>


                              - Suporte<br>


                              - Envio de imagens e vídeos<br>


                              - Envio de mensagem em massa<br>


                              - Gerenciador de atraso</p>

                            <p style="color: grey;">
                              &nbsp;&nbsp; Extrator de links de grupos<br>


                              &nbsp;&nbsp; Extrator de contato do Google Map<br>


                              &nbsp;&nbsp; Relatório<br>


                              &nbsp;&nbsp; Atualizações vitalícias<br>


                              &nbsp;&nbsp; Remetente de mensagem parametrizada


                            </p>

                          </div>
                          <div class="views-field views-field-field-lien-profil">
                            <div class="field-content" id="btn_pro">
                              <div class="btn orange" value="" data-toggle="modal" data-target="#myModal" id="">ADQUIRIR</div>
                            </div>
                          </div>
                        </div>
                        <div class="views-row views-row-3 views-row-odd payment_dlg">

                          <div class="views-field" style="height: 134px;margin: 0px auto 20px auto;display: flex;justify-content: center;align-items: center;">
                            <div class="" style="width: 100%;"><h3 style="color: white; font-size: 25px;">Plano Premium</h3></div>
                          </div>
                          <div class="views-field views-field-title">
                            <h3 class="field-content" style="font-size: 24px;">R$ 199,00/mês</h3>

                          </div>
                          <div class="views-field views-field-field-r-sum-profil">
                            <p style="color: white;">- Chat bot<br>


                              - Suporte<br>


                              - Envio de imagens e vídeos<br>


                              - Envio de mensagem em massa<br>


                              - Gerenciador de atraso<br>

                              - Extrator de links de grupos<br>


                              - Extrator de contato do Google Map<br>


                              - Relatório<br>


                              - Atualizações vitalícias<br>


                              - Remetente de mensagem parametrizada

                            </p>

                          </div>
                          <div class="views-field views-field-field-lien-profil">
                            <div class="field-content" id="btn_plugin">
                              <div class="btn orange" value="" data-toggle="modal" data-target="#myModal" id="btn_normal">ADQUIRIR</div>
                            </div>
                          </div>
                        </div>
                      </div>


                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>


      <div id="content-installation">
        <div>
          <h2>Etapas para instalar o Wa WhatsApp Marketing</h2>
          <div class="installation-content">
            <p>Passo 1: Baixe o Wa WhatsApp Marketing Software no link acima</p>
            <p>Passo 2: Instale este software em seu sistema.</p>
            <p>Passo 3: Após a instalação, pague conforme o plano</p>
            <p>Passo 4: Mande um WhatsApp confirmando o Número do Recibo de Compra para <b>" 13988792795"</b> OU <b>"13997541840"</b>.</p>
            <p>Etapa 5: Enviaremos a você o número de licença de acordo com a assinatura do seu plano.</p>
          </div>
        </div>
      </div>

      <!-- Contenu -->


      <div id="content-bottom1" class="region region-content-bottom1">
        <div class="inner">
          <div id="block-block-3" class="block block-block first last odd">
            <div><img id="footer_computer_img" src="./assets/img/footerlaptop.png" data-xblocker="passed" style="visibility: visible;"></div>
            <div><img id="footer_phone_img" src="./assets/img/footermobile.png" data-xblocker="passed" style="visibility: visible;"></div>

          </div>
        </div>
      </div>

      <div id="bottom" class="region region-bottom" style="padding-top: 30px;">
        <div class="inner">
          <div id="block-block-2" class="block block-block first last odd">

            <h2 class="block__title block-title">Footer mentions</h2>

            <p>One Outlet Engenharia de Software - CNPJ 35.220.405/0001-10 Email. oneoutlet@oneoutlet.site</p>

          </div>
        </div>
      </div>
      <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog" style="margin-top: 100px;">
        
          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-body">
              <form class="form-horizontal" method="POST" action="https://www.PayPal.com/cgi-bin/webscr" id="payment-form" validate>
                <img src="./assets/img/paypal-color.svg" class="paypal_img" />
                <h2 class="paypal_modal_title">Pague com seguranca usando</h2>
                <input id="amount" name="amount" type="hidden" value="">
                <input type='hidden' name='business' value='oneoutlet@oneoutlet.site'>
                <input type='hidden' name='item_name' value='Licença permanente'>
                <div class="pay_modal_user_item">
                  <span class="">Nome de Usuário:</span>
                  <input type='text' class="form-control" name='user_name' id="user_name"  placeholder="Émerson Sá Paim" required>
                </div>
                <div class="pay_modal_user_item">
                  <span>Email:</span>
                  <input type='email' class="form-control" name='item_number' id="machine_id"placeholder="test@gmail.com" required>
                </div>
                <input type='hidden' name='no_shipping' value='1'>
                <input type='hidden' name='currency_code' value='BRL'>
                <input type='hidden' name='notify_url' value='<?php echo $payment->route("http://Oneoutlet.site/src/License/notify.php", "notify") ?>'>
                <input type='hidden' name='cancel_return' value='<?php echo $payment->route("http://Oneoutlet.site/", "") ?>'>
                <input type='hidden' name='return' id="return_pay" value='<?php echo $payment->route("http://Oneoutlet.site/src/License/", "return") ?>'>
                <input type="hidden" name="cmd" value="_xclick-subscriptions">
                <input type="hidden" name="cmd" value="_xclick-subscriptions">
                <input type="hidden" name="t3" value="M" >
                <input type="hidden" name="p3" value="1" >
                <input type="hidden" name="a3" id="a3" value="89.9" >
                <input type="hidden" name="src" value="1" >
                <button type="submit" name="subscribe" id="btn_paypal" class="btn btn-default">ADQUIRIR</button>
              </form>
            </div>
          </div>
          
        </div>
      </div>
    </body>
  </body>
</html></body></html></div><!-- <script>
window.axeptioSettings = {
clientId: "6087c23fe74e2676aa0f7356",
cookiesVersion: "linphone-base";
(function (d, s) {
var t = d.getElementsByTagName(s)[0],
e = d.createElement(s);
e.async = true;
e.src = "//static.axept.io/sdk.js";
t.parentNode.insertBefore(e, t);
})(document, "script");
</script> --><!--googleoff: index--><!--googleon: index--><script type="text/javascript" async="true" src="./assets/script/script.js"> </script>
</body></html>