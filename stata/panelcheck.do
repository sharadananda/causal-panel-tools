program define panelcheck
    syntax varlist(min=2 max=2)

    local id : word 1 of `varlist'
    local time : word 2 of `varlist'

    duplicates report `id' `time'

    display "Panel structure checked."
end
