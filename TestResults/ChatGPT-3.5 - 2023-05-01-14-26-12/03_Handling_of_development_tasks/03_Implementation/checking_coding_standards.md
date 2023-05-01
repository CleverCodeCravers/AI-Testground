# Checking for coding standards

## Prompt 1

```javascript
// Protokoll für das Teammeeting für Mahr EDV

var PQ1 = undefined;
var PQ2 = undefined;
var PQ3 = undefined;
var PQ4 = undefined;
var PQ5 = undefined;
var PQ6 = undefined;
var PQ7 = undefined;
var PQ8 = undefined;
var PQ9 = undefined;
var PQ10 = undefined;
var PQ11 = undefined;

//// Functions

function ZusammenfassungAmEnde() {
  document.querySelector("#PQ1").innerHTML = PQ1.replaceAll("\n", "<br/>");
  document.querySelector("#PQ2").innerHTML += PQ2.replaceAll("\n", "<br/>");
  document.querySelector("#PQ3").innerHTML += PQ3.replaceAll("\n", "<br/>");
  document.querySelector("#PQ4").innerHTML += PQ4.replaceAll("\n", "<br/>");
  document.querySelector("#PQ5").innerHTML += PQ5.replaceAll("\n", "<br/>");
  document.querySelector("#PQ6").innerHTML += PQ6.replaceAll("\n", "<br/>");
  document.querySelector("#PQ7").innerHTML += PQ7.replaceAll("\n", "<br/>");
  document.querySelector("#PQ8").innerHTML += PQ8.replaceAll("\n", "<br/>");
  document.querySelector("#PQ9").innerHTML += PQ9.replaceAll("\n", "<br/>");
  document.querySelector("#PQ10").innerHTML += PQ10.replaceAll("\n", "<br/>");
  document.querySelector("#PQ11").innerHTML += PQ11.replaceAll("\n", "<br/>");
}

bootbox.alert({
  size: "small",
  title: "Mahr EDV GmbH",
  message: "Herzlich Willkommen zum Protokoll für das Teammeeting",
  callback: function () {
    bootbox.prompt({
      size: "big",
      inputType: "textarea",
      title: "•Willkommen bei Mahr EDV: Neue Teammitglieder:",
      callback: function (result) {
        PQ1 = result;

        bootbox.prompt({
          size: "big",
          inputType: "textarea",
          title: "•Teamerfolg und Bonus:",
          callback: function (result) {
            PQ2 = result;

            bootbox.prompt({
              size: "big",
              inputType: "textarea",
              title: "•Neues aus den Teams: Aktuelle Neukunden:",
              callback: function (result) {
                PQ3 = result;

                bootbox.prompt({
                  size: "big",
                  inputType: "textarea",
                  title:
                    "•Neues aus den Teams: Status Los Wochos (insbes. SMBv1, LDAP)",
                  callback: function (result) {
                    PQ4 = result;

                    bootbox.prompt({
                      size: "big",
                      inputType: "textarea",
                      title:
                        "•Neues aus den Teams: Los Wochos „Wer hat den schönsten Kabelsalat“",
                      callback: function (result) {
                        PQ5 = result;

                        bootbox.prompt({
                          size: "big",
                          inputType: "textarea",
                          title: "•Geplante Erweiterung der Standorte 2020",
                          callback: function (result) {
                            PQ6 = result;

                            bootbox.prompt({
                              size: "big",
                              inputType: "textarea",
                              title: "•Info Better Tomorrow",
                              callback: function (result) {
                                PQ7 = result;

                                bootbox.prompt({
                                  size: "big",
                                  inputType: "textarea",
                                  title: "•Schulungsplan",
                                  callback: function (result) {
                                    PQ8 = result;

                                    bootbox.prompt({
                                      size: "big",
                                      inputType: "textarea",
                                      title: "•Prozess – KuDo Export",
                                      callback: function (result) {
                                        PQ9 = result;

                                        bootbox.prompt({
                                          size: "big",
                                          inputType: "textarea",
                                          title:
                                            "•Neues aus Social Media- Wettbewerbe & Auszeichnungen",
                                          callback: function (result) {
                                            PQ10 = result;

                                            bootbox.prompt({
                                              size: "big",
                                              inputType: "textarea",
                                              title:
                                                "•Fragen/ Ideen/ Kritik/ Lob",
                                              callback: function (result) {
                                                PQ11 = result;

                                                ZusammenfassungAmEnde();
                                              },
                                            });
                                          },
                                        });
                                      },
                                    });
                                  },
                                });
                              },
                            });
                          },
                        });
                      },
                    });
                  },
                });
              },
            });
          },
        });
      },
    });
  },
});
```

Our coding standard has the following requirements:

- Avoid repetition.
- All variables should be as local as possible.
- Name variables and methods properly
- Keep the code complexity low.

Are the standards followed in this code?

### Validation

### Result

The code provided does not follow all of the mentioned coding standards.

- There is repetition in the code structure for each prompt callback function, which could be refactored into a separate reusable function.
- Some variables are not scoped as locally as possible, such as the `ZusammenfassungAmEnde` function being in the global scope.
- The method and variable names are not entirely descriptive, with PQ1-PQ11 not being very informative.
- The code complexity could be reduced by refactoring the nested callback functions into a more modular structure, using promises or async/await syntax.
