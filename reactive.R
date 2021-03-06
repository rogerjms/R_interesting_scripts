#Wraps a normal expression to create a reactive expression. Conceptually, a reactive expression is a expression whose result will change over time.
values <- reactiveValues(A=1)

reactiveB <- reactive({
  values$A + 1
})

# Can use quoted expressions
reactiveC <- reactive(quote({ values$A + 2 }), quoted = TRUE)

# To store expressions for later conversion to reactive, use quote()
expr_q <- quote({ values$A + 3 })
reactiveD <- reactive(expr_q, quoted = TRUE)

# View the values from the R console with isolate()
isolate(reactiveB())

[1] 2

isolate(reactiveC())

[1] 3

isolate(reactiveD())

[1] 4
#关于reactive
#Reactive programming is a coding style that starts with reactive values–values that change over time, or in response to the user–and builds on top of them with reactive expressions–expressions that access reactive values and execute other reactive expressions.
#即reactive分为reactive值和reactive表达式
