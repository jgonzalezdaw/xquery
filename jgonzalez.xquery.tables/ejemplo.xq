(: XQuery main module :)
for $item in doc("order.xml")//item,
    $product in doc("catalog.xml")//product
let $name := $product/name
where $item/@num = $product/number
order by $name
return concat($name," -cantidad- ",$item/@quantity)