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

Unfortunately, the provided code does not follow the recommended coding standards:

1. **Avoid repetition**: The same prompt function is called multiple times with similar parameters. This can be extracted into a separate function to reduce repetition.
2. **All variables should be as local as possible**: The global variables `PQ1` to `PQ11` are used throughout the code, making them unnecessary for most of the functions. Local variables or even passing them as arguments could make the code more readable and maintainable.
3. **Name variables and methods properly**: While variable names like `PQ1` to `PQ11` might be understandable in this specific context, they lack meaningful names. It's recommended to use descriptive names that indicate what each variable represents or what each function does.
4. **Keep the code complexity low**: The code is quite convoluted, with multiple nested functions and loops. Breaking down complex logic into smaller, more manageable pieces can improve readability and maintainability.

To address these issues, consider refactoring the code to:

- Extract repetitive code into separate functions
- Use local variables or function arguments instead of global variables
- Rename variables and methods for better understanding
- Simplify complex logic by breaking it down into smaller parts

This will make the code more readable, maintainable, and easier to understand.
