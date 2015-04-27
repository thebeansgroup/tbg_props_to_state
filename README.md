# Props to State

## How to use

```
Comp   = React.createClass

  getInitialState: -> 
    TransferToState(@props, 
      current_user: "options.current_user?",
      verification_status: "options.verification_status"
    )
```

 If you also wish to set default state values

```
Comp   = React.createClass

  getInitialState: -> 
    TransferToState(@props,
      {
        current_user: "options.current_user?",
        verification_status: "options.verification_status"
      },
      {
        display: true
      }
    )
```
