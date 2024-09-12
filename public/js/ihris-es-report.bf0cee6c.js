"use strict";(self["webpackChunkiHRIS_v5"]=self["webpackChunkiHRIS_v5"]||[]).push([[5844],{2245:function(){},3702:function(e,t,s){s.d(t,{Z:function(){return o}});s(2245);var i=s(172),a=s(8230),r=s(7764),o=r.Z.extend({name:"v-checkbox",props:{indeterminate:Boolean,indeterminateIcon:{type:String,default:"$checkboxIndeterminate"},offIcon:{type:String,default:"$checkboxOff"},onIcon:{type:String,default:"$checkboxOn"}},data(){return{inputIndeterminate:this.indeterminate}},computed:{classes(){return{...a.Z.options.computed.classes.call(this),"v-input--selection-controls":!0,"v-input--checkbox":!0,"v-input--indeterminate":this.inputIndeterminate}},computedIcon(){return this.inputIndeterminate?this.indeterminateIcon:this.isActive?this.onIcon:this.offIcon},validationState(){if(!this.isDisabled||this.inputIndeterminate)return this.hasError&&this.shouldValidate?"error":this.hasSuccess?"success":null!==this.hasColor?this.computedColor:void 0}},watch:{indeterminate(e){this.$nextTick((()=>this.inputIndeterminate=e))},inputIndeterminate(e){this.$emit("update:indeterminate",e)},isActive(){this.indeterminate&&(this.inputIndeterminate=!1)}},methods:{genCheckbox(){const{title:e,...t}=this.attrs$;return this.$createElement("div",{staticClass:"v-input--selection-controls__input"},[this.$createElement(i.Z,this.setTextColor(this.validationState,{props:{dense:this.dense,dark:this.dark,light:this.light}}),this.computedIcon),this.genInput("checkbox",{...t,"aria-checked":this.inputIndeterminate?"mixed":this.isActive.toString()}),this.genRipple(this.setTextColor(this.rippleState))])},genDefaultSlot(){return[this.genCheckbox(),this.genLabel()]}}})},6845:function(e,t,s){var i=s(7352),a=s(6257),r=s(4589),o=s(3325);t["Z"]=(0,o.Z)((0,i.d)("expansionPanels","v-expansion-panel","v-expansion-panels"),(0,a.J)("expansionPanel",!0)).extend({name:"v-expansion-panel",props:{disabled:Boolean,readonly:Boolean},data(){return{content:null,header:null,nextIsActive:!1}},computed:{classes(){return{"v-expansion-panel--active":this.isActive,"v-expansion-panel--next-active":this.nextIsActive,"v-expansion-panel--disabled":this.isDisabled,...this.groupClasses}},isDisabled(){return this.expansionPanels.disabled||this.disabled},isReadonly(){return this.expansionPanels.readonly||this.readonly}},methods:{registerContent(e){this.content=e},unregisterContent(){this.content=null},registerHeader(e){this.header=e,e.$on("click",this.onClick)},unregisterHeader(){this.header=null},onClick(e){e.detail&&this.header.$el.blur(),this.$emit("click",e),this.isReadonly||this.isDisabled||this.toggle()},toggle(){this.$nextTick((()=>this.$emit("change")))}},render(e){return e("div",{staticClass:"v-expansion-panel",class:this.classes,attrs:{"aria-expanded":String(this.isActive)}},(0,r.z9)(this))}})},2443:function(e,t,s){var i=s(5827),a=s(8625),r=s(6952),o=s(6257),l=s(4589),n=s(3325);const h=(0,n.Z)(a.Z,r.Z,(0,o.f)("expansionPanel","v-expansion-panel-content","v-expansion-panel"));t["Z"]=h.extend().extend({name:"v-expansion-panel-content",data:()=>({isActive:!1}),computed:{parentIsActive(){return this.expansionPanel.isActive}},watch:{parentIsActive:{immediate:!0,handler(e,t){e&&(this.isBooted=!0),null==t?this.isActive=e:this.$nextTick((()=>this.isActive=e))}}},created(){this.expansionPanel.registerContent(this)},beforeDestroy(){this.expansionPanel.unregisterContent()},render(e){return e(i.Fx,this.showLazyContent((()=>[e("div",this.setBackgroundColor(this.color,{staticClass:"v-expansion-panel-content",directives:[{name:"show",value:this.isActive}]}),[e("div",{class:"v-expansion-panel-content__wrap"},(0,l.z9)(this))])])))}})},1192:function(e,t,s){var i=s(5827),a=s(172),r=s(6952),o=s(6257),l=s(6286),n=s(4589),h=s(3325);const c=(0,h.Z)(r.Z,(0,o.f)("expansionPanel","v-expansion-panel-header","v-expansion-panel"));t["Z"]=c.extend().extend({name:"v-expansion-panel-header",directives:{ripple:l.Z},props:{disableIconRotate:Boolean,expandIcon:{type:String,default:"$expand"},hideActions:Boolean,ripple:{type:[Boolean,Object],default:!1}},data:()=>({hasMousedown:!1}),computed:{classes(){return{"v-expansion-panel-header--active":this.isActive,"v-expansion-panel-header--mousedown":this.hasMousedown}},isActive(){return this.expansionPanel.isActive},isDisabled(){return this.expansionPanel.isDisabled},isReadonly(){return this.expansionPanel.isReadonly}},created(){this.expansionPanel.registerHeader(this)},beforeDestroy(){this.expansionPanel.unregisterHeader()},methods:{onClick(e){this.$emit("click",e)},genIcon(){const e=(0,n.z9)(this,"actions")||[this.$createElement(a.Z,this.expandIcon)];return this.$createElement(i.Z5,[this.$createElement("div",{staticClass:"v-expansion-panel-header__icon",class:{"v-expansion-panel-header__icon--disable-rotate":this.disableIconRotate},directives:[{name:"show",value:!this.isDisabled}]},e)])}},render(e){return e("button",this.setBackgroundColor(this.color,{staticClass:"v-expansion-panel-header",class:this.classes,attrs:{tabindex:this.isDisabled?-1:null,type:"button","aria-expanded":this.isActive},directives:[{name:"ripple",value:this.ripple}],on:{...this.$listeners,click:this.onClick,mousedown:()=>this.hasMousedown=!0,mouseup:()=>this.hasMousedown=!1}}),[(0,n.z9)(this,"default",{open:this.isActive},!0),this.hideActions||this.genIcon()])}})},5630:function(e,t,s){s.d(t,{Z:function(){return r}});var i=s(4622),a=s(1824),r=i.y.extend({name:"v-expansion-panels",provide(){return{expansionPanels:this}},props:{accordion:Boolean,disabled:Boolean,flat:Boolean,hover:Boolean,focusable:Boolean,inset:Boolean,popout:Boolean,readonly:Boolean,tile:Boolean},computed:{classes(){return{...i.y.options.computed.classes.call(this),"v-expansion-panels":!0,"v-expansion-panels--accordion":this.accordion,"v-expansion-panels--flat":this.flat,"v-expansion-panels--hover":this.hover,"v-expansion-panels--focusable":this.focusable,"v-expansion-panels--inset":this.inset,"v-expansion-panels--popout":this.popout,"v-expansion-panels--tile":this.tile}}},created(){this.$attrs.hasOwnProperty("expand")&&(0,a.fK)("expand","multiple",this),Array.isArray(this.value)&&this.value.length>0&&"boolean"===typeof this.value[0]&&(0,a.fK)(':value="[true, false, true]"',':value="[0, 2]"',this)},methods:{updateItem(e,t){const s=this.getValue(e,t),i=this.getValue(e,t+1);e.isActive=this.toggleMethod(s),e.nextIsActive=this.toggleMethod(i)}}})},9155:function(e,t,s){var i=s(6286),a=s(538);t["Z"]=a["default"].extend({name:"rippleable",directives:{ripple:i.Z},props:{ripple:{type:[Boolean,Object],default:!0}},methods:{genRipple(e={}){return this.ripple?(e.staticClass="v-input--selection-controls__ripple",e.directives=e.directives||[],e.directives.push({name:"ripple",value:{center:!0}}),this.$createElement("div",e)):null}}})},7764:function(e,t,s){s.d(t,{X:function(){return l}});var i=s(8230),a=s(9155),r=s(4419),o=s(3325);function l(e){e.preventDefault()}t["Z"]=(0,o.Z)(i.Z,a.Z,r.Z).extend({name:"selectable",model:{prop:"inputValue",event:"change"},props:{id:String,inputValue:null,falseValue:null,trueValue:null,multiple:{type:Boolean,default:null},label:String},data(){return{hasColor:this.inputValue,lazyValue:this.inputValue}},computed:{computedColor(){if(this.isActive)return this.color?this.color:this.isDark&&!this.appIsDark?"white":"primary"},isMultiple(){return!0===this.multiple||null===this.multiple&&Array.isArray(this.internalValue)},isActive(){const e=this.value,t=this.internalValue;return this.isMultiple?!!Array.isArray(t)&&t.some((t=>this.valueComparator(t,e))):void 0===this.trueValue||void 0===this.falseValue?e?this.valueComparator(e,t):Boolean(t):this.valueComparator(t,this.trueValue)},isDirty(){return this.isActive},rippleState(){return this.isDisabled||this.validationState?this.validationState:void 0}},watch:{inputValue(e){this.lazyValue=e,this.hasColor=e}},methods:{genLabel(){const e=i.Z.options.methods.genLabel.call(this);return e?(e.data.on={click:l},e):e},genInput(e,t){return this.$createElement("input",{attrs:Object.assign({"aria-checked":this.isActive.toString(),disabled:this.isDisabled,id:this.computedId,role:e,type:e},t),domProps:{value:this.value,checked:this.isActive},on:{blur:this.onBlur,change:this.onChange,focus:this.onFocus,keydown:this.onKeydown,click:l},ref:"input"})},onClick(e){this.onChange(),this.$emit("click",e)},onChange(){if(!this.isInteractive)return;const e=this.value;let t=this.internalValue;if(this.isMultiple){Array.isArray(t)||(t=[]);const s=t.length;t=t.filter((t=>!this.valueComparator(t,e))),t.length===s&&t.push(e)}else t=void 0!==this.trueValue&&void 0!==this.falseValue?this.valueComparator(t,this.trueValue)?this.falseValue:this.trueValue:e?this.valueComparator(t,e)?null:e:!t;this.validate(!0,t),this.internalValue=t,this.hasColor=t},onFocus(e){this.isFocused=!0,this.$emit("focus",e)},onBlur(e){this.isFocused=!1,this.$emit("blur",e)},onKeydown(e){}}})},1532:function(e,t,s){s.r(t),s.d(t,{default:function(){return O}});var i=function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("v-container",{staticClass:"py-5"},[s("v-card",{staticClass:"py-4 px-2"},[s("v-card-title",{staticClass:"ma-4"},[s("v-layout",{attrs:{row:"",wrap:""}},[s("v-icon",{staticClass:"mr-2",attrs:{color:"#0d3552"}},[e._v("mdi-table-large")]),e.hideLabel?e._e():s("h4",{staticClass:"font-weight-bold",staticStyle:{color:"#0d3552"}},[e._v(" "+e._s(e.$t("App.reports."+e.label))+" ")]),s("v-row",{staticClass:"pr-4",attrs:{align:"center",justify:"end"}},[e.hideReportCustomization?e._e():s("v-btn",{staticClass:"mr-2",attrs:{color:"primary",small:""},on:{click:function(t){e.dialog=!0}}},[s("v-icon",{attrs:{left:""}},[e._v("mdi-chart-box-plus-outline")]),e._v(" "+e._s(e.$t("App.hardcoded-texts.Customize Report"))+" ")],1),s("div",{staticClass:"text-center"},[s("v-menu",{attrs:{"open-on-hover":"",bottom:"","offset-y":"",rounded:"lg",transition:"scale-transition"},scopedSlots:e._u([{key:"activator",fn:function(t){var i=t.on,a=t.attrs;return[e.hideExport?e._e():s("v-btn",e._g(e._b({attrs:{small:"",color:"info",dark:""}},"v-btn",a,!1),i),[e.downloading?s("v-progress-circular",{attrs:{color:"amber",indeterminate:""}}):s("v-icon",{attrs:{left:""}},[e._v("mdi-microsoft-excel")]),e._v(" "+e._s(e.$t("App.hardcoded-texts.Export"))+" ")],1)]}}])},[s("v-list",[s("v-list-item",{staticStyle:{cursor:"pointer"}},[s("v-list-item-title",{on:{click:function(t){return e.reportExport("xlsx")}}},[e._v("Excel")])],1),s("v-list-item",{staticStyle:{cursor:"pointer"}},[s("v-list-item-title",{on:{click:function(t){return e.reportExport("csv")}}},[e._v("CSV")])],1)],1)],1)],1)],1)],1)],1),s("v-divider",{staticClass:"my-2"}),s("v-expansion-panels",{staticClass:"elevation-0",attrs:{hover:""}},[s("v-expansion-panel",[s("v-expansion-panel-header",{attrs:{color:"blue-grey darken-2"},scopedSlots:e._u([{key:"actions",fn:function(){return[s("v-icon",{attrs:{color:"white"}},[e._v(" $expand ")])]},proxy:!0}])},[s("h3",{staticClass:"font-weight-bold subtitle-2 white--text"},[s("v-icon",{staticClass:"mr-2",attrs:{color:"white"}},[e._v("mdi-filter-variant")]),e._v(" "+e._s(e.$t("App.hardcoded-texts.Filters"))+" ")],1)]),s("v-expansion-panel-content",[e.hideLabel?e._e():s("v-card-title",{staticClass:"elevation-0"},[e._t("default")],2)],1)],1)],1),e.error_message?s("v-card-subtitle",{staticClass:"white--text error"},[e._v(e._s(e.error_message)+" ")]):e._e(),s("v-data-table",{staticClass:"elevation-1 mt-3",staticStyle:{cursor:"pointer"},attrs:{"footer-props":{"items-per-page-options":e.itemsPerPage},headers:e.headers,items:e.results,loading:e.loading,options:e.options,"server-items-length":e.total,"show-select":e.reportData.displayCheckbox&&!e.hideCheckboxes,"item-key":"id",dense:""},on:{"update:options":function(t){e.options=t},"click:row":e.rowClicked},model:{value:e.selected,callback:function(t){e.selected=t},expression:"selected"}})],1),s("v-row",{attrs:{justify:"center"}},[s("v-dialog",{attrs:{"max-width":"80%",persistent:""},model:{value:e.dialog,callback:function(t){e.dialog=t},expression:"dialog"}},[s("v-card",{staticClass:"px-6 py-4"},[s("v-card-title",{staticClass:"justify-center"},[s("span",{staticClass:"text-h6"},[s("v-icon",{staticClass:"mr-2",attrs:{color:"primary",large:""}},[e._v("mdi-table-check")]),e._v(e._s(e.$t("App.hardcoded-texts.selectFeild")))],1)]),s("v-card-text",[s("v-container",{attrs:{fluid:""}},[s("v-row",e._l(e.allHeaders,(function(t){return s("v-col",{key:t.value,attrs:{cols:"12",md:"4",sm:"4"}},[s("v-checkbox",{attrs:{label:t.text,value:t.value,color:"primary","hide-details":""},model:{value:e.selectedColumns,callback:function(t){e.selectedColumns=t},expression:"selectedColumns"}})],1)})),1)],1)],1),s("v-card-actions",[s("v-spacer"),s("v-btn",{attrs:{color:"warning"},on:{click:function(){e.dialog=!1}}},[s("v-icon",{attrs:{left:""}},[e._v("mdi-close-box-multiple")]),e._v(" "+e._s(e.$t("App.hardcoded-texts.Close"))+" ")],1),s("v-btn",{attrs:{color:"warning"},on:{click:e.reset}},[s("v-icon",{attrs:{left:""}},[e._v("mdi-close-box-multiple")]),e._v(" "+e._s(e.$t("App.hardcoded-texts.Reset"))+" ")],1),s("v-btn",{attrs:{color:"primary"},on:{click:e.onFilter}},[s("v-icon",{attrs:{left:""}},[e._v("mdi-content-save-check-outline")]),e._v(" "+e._s(e.$t("App.hardcoded-texts.Apply"))+" ")],1)],1)],1)],1)],1)],1)},a=[],r=(s(6699),s(4479)),o=s(9669),l=s.n(o),n={name:"ihris-report",props:["reportData","label","terms","termsConditions","dataURL","page","hideCheckboxes","hideLabel","hideExport","hideReportCustomization","disableOpenResourcePage"],data:function(){return{debug:"",downloading:!1,headers:[],allHeaders:[],results:[],selectedColumns:[],options:{itemsPerPage:10},loading:!1,total:0,prevPage:-1,link:[],selected:[],error_message:null,selectAll:!1,dialog:!1,resourcePage:""}},watch:{selected(){this.selected.length!==this.results.length&&this.selectAll&&(this.selectAll=!1),r.Y.$emit("ihris-report-selections",this.selected,this.reportData,this.terms,this.termsConditions,this.selectAll)},terms:{handler(){this.selectAll=!1,this.getTotalRecords(),this.getData(!0),r.Y.$emit("changedTerms",this.terms)},deep:!0},termsConditions:{handler(){Object.keys(this.terms).length>0&&(this.selectAll=!1,this.getTotalRecords(),this.getData(!0))},deep:!0},options:{handler(){this.getTotalRecords(),this.getData()},deep:!0}},computed:{itemsPerPage(){let e=[5,10,20,50];return e}},created:function(){this.getResourcePage(),this.reportData&&this.reportData.fieldsDetails&&this.reportData.fieldsDetails.sort(((e,t)=>null!=e[2]&&null==t[2]||null!=e[2]&&null!=t[2]&&e[2]<t[2]?-1:null!=t[2]&&null==e[2]||null!=e[2]&&null!=t[2]&&e[2]>t[2]?1:-1));for(let e of this.reportData.fieldsDetails)this.headers.push({text:this.$t(`App.reports.${e[0]}`),value:e[1]}),this.allHeaders.push({text:this.$t(`App.reports.${e[0]}`),value:e[1]});r.Y.$on("reload-report",(()=>{this.getTotalRecords(),this.getData()})),r.Y.$on("mhero-select-all",(()=>{this.selected=[],this.selected=this.results,this.selectAll=!0}))},methods:{rowClicked(e){this.$emit("rowSelected",e),this.resourcePage&&!this.disableOpenResourcePage&&this.$router.push({name:"resource_view",params:{page:this.resourcePage,id:e[this.resourcePageId]},query:this.queryParams})},reset(){this.headers=this.allHeaders,this.dialog=!1},onFilter(){this.dialog=!1,this.headers=this.allHeaders.filter((e=>{if(this.selectedColumns.includes(e.value))return e}))},clickIt:function(e){this.$router.push({name:"resource_view",params:{page:this.page,id:e.id}})},buildTerms(){let e,t=this.termsConditions,s={};if(s={query:{bool:{must:[],must_not:[],filter:[]}}},Object.keys(this.terms).length>0)for(let i in this.terms){if(!this.terms[i]||0===this.terms[i].length)continue;let a;if(e=this.reportData.filters.find((e=>e.field===i)),e.isDropDown||Array.isArray(this.terms[i])||(this.terms[i]=this.terms[i].replace(/\s+/g," ").trim()),a=e.isDropDown&&this.reportData.mappings.mappings.properties[i].fields&&this.reportData.mappings.mappings.properties[i].fields.keyword?i+".keyword":i,Array.isArray(this.terms[i])){let r={terms:{}};r.terms[a]=[];for(let e of this.terms[i])r.terms[a].push(e);"exclude"===this.termsConditions[i]?"date"!==e.dataType?s.query.bool.must_not.push(r):this.formatDateFilter(e,t,s):"date"!==e.dataType?s.query.bool.must.push(r):this.formatDateFilter(e,t,s)}else if(e.isDropDown){let r={terms:{}};if(r.terms[a]=[this.terms[i]],"exclude"===this.termsConditions[i])if("date"!==e.dataType)s.query.bool.must_not.push(r);else{let i=this.terms,a=[],r=e.field;if(t[r]&&"include"!==t[r])if("range"===t[r]){let e=i[r].sort(),t=e[0],o=e[1],l={gte:t,lte:o},n={},h={};h[r]=l,n["range"]=h,a.push(n),s.query.bool.must=s.query.bool.must.filter((e=>!e.terms||!Object.keys(e.terms).includes(r)))}else{let e={},o={},l={};e[t[r]]=i[r],l[r]=e,o["range"]=l,a.push(o),s.query.bool.must=s.query.bool.must.filter((e=>!e.term||!Object.keys(e.term).includes(r)))}s.query.bool.filter=a}else if("date"!==e.dataType)s.query.bool.must.push(r);else{let i=this.terms,a=[],r=e.field;if(t[r]&&"include"!==t[r])if("range"===t[r]){let e=i[r].sort(),t=e[0],o=e[1],l={gte:t,lte:o},n={},h={};h[r]=l,n["range"]=h,a.push(n),s.query.bool.must=s.query.bool.must.filter((e=>!e.terms||!Object.keys(e.terms).includes(r)))}else{let e={},o={},l={};e[t[r]]=i[r],l[r]=e,o["range"]=l,a.push(o),s.query.bool.must=s.query.bool.must.filter((e=>!e.term||!Object.keys(e.term).includes(r)))}s.query.bool.filter=a}}else{let r=this.terms[i].split(" ");for(let o of r){let r={};this.reportData.mappings.mappings.properties[a]&&this.reportData.mappings.mappings.properties[a].fields&&this.reportData.mappings.mappings.properties[a].fields.keyword?(r.wildcard={},r.wildcard[a+".keyword"]={value:"*"+o+"*",case_insensitive:!0}):(r.term={},r.term[a]=o),"exclude"===this.termsConditions[i]?"date"!==e.dataType?s.query.bool.must_not.push(r):this.formatDateFilter(e,t,s):"date"!==e.dataType?s.query.bool.must.push(r):this.formatDateFilter(e,t,s)}}}if(e&&e.field&&("startDate"==e.field||"endDate"==e.field)){let t,i=(new Date).toISOString().slice(0,10);"startDate"==e.field&&(t=this.terms.startDate),"endDate"==e.field&&(i=this.terms.endDate),s={query:{bool:{filter:[{range:{startDate:{gte:t}}},{range:{endDate:{lte:i}}}]}}}}return e&&("date"===e?.dataType||"long"===e?.dataType)&&e.field&&this.formatDateFilter(e,t,s),r.Y.$emit("builtESTerms",s),s},getTotalRecords(){let e=`/es/${this.reportData.indexName}/_count`,t=this.buildTerms();t.reportOptions={locationBasedConstraint:this.reportData.locationBasedConstraint},fetch(e,{method:"POST",headers:{"Content-Type":"application/json"},body:JSON.stringify(t)}).then((e=>{e.json().then((e=>{this.total=e.count,r.Y.$emit("report-total-records",this.total)}))}))},getData(e){this.loading=!0,this.error_message=null;let t="";e&&(this.options.page=1);let s=this.options.itemsPerPage||10;-1===s&&(s=this.total);let i=this.options.page*this.options.itemsPerPage-this.options.itemsPerPage;t=`/es/${this.reportData.indexName}/_search?size=${s}&from=${i}`,this.prevPage=this.options.page;let a=this.buildTerms();a.reportOptions={locationBasedConstraint:!0};let r=[];for(let o in this.options.sortBy){let e,t=this.options.sortBy[o],s={};e=this.reportData.mappings.mappings.properties[t]&&this.reportData.mappings.mappings.properties[t].fields&&this.reportData.mappings.mappings.properties[t].fields.keyword?t+".keyword":t,this.options.sortDesc[o]?s[e]="desc":s[e]="asc",r.push(s)}a.sort=r,fetch(t,{method:"POST",headers:{"Content-Type":"application/json"},body:JSON.stringify(a)}).then((e=>{e.json().then((e=>{if(this.results=[],e.hits.total.value>0){this.link=e.link;for(let t of e.hits.hits){let e={};for(let s in t["_source"])e[s]=t["_source"][s];e.id=t["_id"],this.results.push(e)}}this.selectAll&&(this.selected=this.results),this.loading=!1})).catch((e=>{this.loading=!1,this.error_message="Unable to load results.",console.log(e)}))})).catch((e=>{this.loading=!1,this.error_message="Unable to load results.",console.log(e)}))},reportExport(e){this.downloading=!0;let t=`/es/export/${e}/${this.reportData.indexName}`,s={query:this.buildTerms(),headers:this.headers,label:this.$t(`App.reports.${this.label}`),selected:this.selected};l()({url:t,method:"POST",responseType:"blob",data:s}).then((t=>{let s;this.downloading=!1,"xlsx"===e?s={type:"application/vnd.ms-excel"}:"csv"===e&&(s={type:"text/csv"});let i=new Blob([t.data],s),a=document.createElement("a");a.href=window.URL.createObjectURL(i),a.download=this.$t(`App.reports.${this.label}`)+"."+e,a.click()}))},getResourcePage(){let e=`/fhir/Basic/${this.page}?_pretty=true`;fetch(e).then((e=>{e.json().then((e=>{let t=e.extension.find((e=>"http://ihris.org/fhir/StructureDefinition/iHRISReportDetails"===e.url)),s=t.extension.find((e=>"resourcePage"===e.url))?.valueString,i=t.extension.find((e=>"resourcePageID"===e.url))?.valueString;this.resourcePage=s,this.resourcePageId=i,this.resourcePageId||(this.resourcePageId="id");let a=t.extension.filter((e=>"http://ihris.org/fhir/StructureDefinition/iHRISReportParameters"===e.url));a.map((e=>{let t,s;e.extension.map((e=>{"esFieldName"===e.url&&(t=e.valueString),"parameter"===e.url&&(s=e.valueString)})),this.queryParams[t]=s}))}))}))},formatDateFilter(e,t,s){let i=this.terms,a=[],r=e.field;if(t[r]&&"include"!==t[r])if("range"===t[r]){let e=[...i[r]].sort(),t=e[0],o=e[1],l={gte:t,lte:o},n={},h={};h[r]=l,n["range"]=h,a.push(n),s.query.bool.must=s.query.bool.must.filter((e=>!e.terms||!Object.keys(e.terms).includes(r)))}else{let e={},o={},l={};e[t[r]]=i[r],l[r]=e,o["range"]=l,a.push(o),s.query.bool.must=s.query.bool.must.filter((e=>!e.term||!Object.keys(e.term).includes(r)))}s.query.bool.filter=a}}},h=n,c=s(3736),d=s(3453),p=s.n(d),u=s(3150),m=s(2371),v=s(7118),g=s(3702),f=s(2102),x=s(4228),b=s(865),y=s(4497),C=s(1418),_=s(6845),D=s(2443),k=s(1192),w=s(5630),P=s(6428),$=s(4470),A=s(6816),V=s(7620),Z=s(4562),S=s(1152),I=s(624),T=s(2877),R=s(9762),B=(0,c.Z)(h,i,a,!1,null,null,null),O=B.exports;p()(B,{VBtn:u.Z,VCard:m.Z,VCardActions:v.h7,VCardSubtitle:v.Qq,VCardText:v.ZB,VCardTitle:v.EB,VCheckbox:g.Z,VCol:f.Z,VContainer:x.Z,VDataTable:b.Z,VDialog:y.Z,VDivider:C.Z,VExpansionPanel:_.Z,VExpansionPanelContent:D.Z,VExpansionPanelHeader:k.Z,VExpansionPanels:w.Z,VIcon:P.Z,VLayout:$.Z,VList:A.Z,VListItem:V.Z,VListItemTitle:Z.V9,VMenu:S.Z,VProgressCircular:I.Z,VRow:T.Z,VSpacer:R.Z})},825:function(e,t,s){s.r(t),s.d(t,{default:function(){return I}});var i=function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("v-container",{staticClass:"py-5"},[s("v-card",{staticClass:"py-4 px-2"},[s("v-card-title",{staticClass:"ma-4"},[s("v-layout",{attrs:{row:"",wrap:""}},[s("v-icon",{staticClass:"mr-2",attrs:{color:"#0d3552"}},[e._v("mdi-table-large")]),e.hideLabel?e._e():s("h4",{staticClass:"font-weight-bold",staticStyle:{color:"#0d3552"}},[e._v(" "+e._s(e.$t("App.reports."+e.label))+" ")]),s("v-spacer"),s("v-row",{staticClass:"pr-4",attrs:{align:"center",justify:"end"}},[e.hideReportCustomization?e._e():s("v-btn",{staticClass:"mr-2",attrs:{color:"primary"},on:{click:function(){e.dialog=!0}}},[s("v-icon",{attrs:{left:""}},[e._v("mdi-chart-box-plus-outline")]),e._v(" Customize Report "+e._s(e.$t("App.hardcoded-texts.Customize Report"))+" ")],1),e.hideExport?e._e():s("v-btn",{attrs:{color:"info"},on:{click:function(t){return e.reportExport("csv")}}},[e.downloading?s("v-progress-circular",{attrs:{color:"amber",indeterminate:""}}):s("v-icon",{attrs:{left:""}},[e._v("mdi-microsoft-excel")]),e._v(" "+e._s(e.$t("App.hardcoded-texts.Export"))+" ")],1)],1)],1)],1),s("v-divider",{staticClass:"my-2"}),s("v-expansion-panels",{staticClass:"elevation-0",attrs:{hover:""}},[s("v-expansion-panel",[s("v-expansion-panel-header",{attrs:{color:"blue-grey darken-2"},scopedSlots:e._u([{key:"actions",fn:function(){return[s("v-icon",{attrs:{color:"white"}},[e._v(" $expand ")])]},proxy:!0}])},[s("h3",{staticClass:"font-weight-bold subtitle-2 white--text"},[s("v-icon",{staticClass:"mr-2",attrs:{color:"white"}},[e._v("mdi-filter-variant")]),e._v(" "+e._s(e.$t("App.hardcoded-texts.Filters"))+" ")],1)]),s("v-expansion-panel-content",[e.hideLabel?e._e():s("v-card-title",{staticClass:"elevation-0"},[e._t("default")],2)],1)],1)],1),e.error_message?s("v-card-subtitle",{staticClass:"white--text error"},[e._v(e._s(e.error_message)+" ")]):e._e(),s("v-data-table",{staticClass:"elevation-1 mt-3",staticStyle:{cursor:"pointer"},attrs:{"footer-props":{"items-per-page-options":e.itemsPerPage},headers:e.headers,items:e.results,loading:e.loading,options:e.options,"server-items-length":e.total,"show-select":e.reportData.displayCheckbox&&!e.hideCheckboxes,"item-key":"id",dense:""},on:{"update:options":function(t){e.options=t},"click:row":e.rowClicked},model:{value:e.selected,callback:function(t){e.selected=t},expression:"selected"}})],1),s("v-row",{attrs:{justify:"center"}},[s("v-dialog",{attrs:{"max-width":"80%",persistent:""},model:{value:e.dialog,callback:function(t){e.dialog=t},expression:"dialog"}},[s("v-card",{staticClass:"px-6 py-4"},[s("v-card-title",{staticClass:"justify-center"},[s("span",{staticClass:"text-h6"},[s("v-icon",{staticClass:"mr-2",attrs:{color:"primary",large:""}},[e._v("mdi-table-check")]),e._v(e._s(e.$t("App.hardcoded-texts.selectFeild")))],1)]),s("v-card-text",[s("v-container",{attrs:{fluid:""}},[s("v-row",e._l(e.allHeaders,(function(t){return s("v-col",{key:t.value,attrs:{cols:"12",md:"4",sm:"4"}},[s("v-checkbox",{attrs:{label:t.text,value:t.value,color:"primary","hide-details":""},model:{value:e.selectedColumns,callback:function(t){e.selectedColumns=t},expression:"selectedColumns"}})],1)})),1)],1)],1),s("v-card-actions",[s("v-spacer"),s("v-btn",{attrs:{color:"warning"},on:{click:function(){e.dialog=!1}}},[s("v-icon",{attrs:{left:""}},[e._v("mdi-close-box-multiple")]),e._v(" "+e._s(e.$t("App.hardcoded-texts.Close"))+" ")],1),s("v-btn",{attrs:{color:"warning"},on:{click:e.reset}},[s("v-icon",{attrs:{left:""}},[e._v("mdi-close-box-multiple")]),e._v(" "+e._s(e.$t("App.hardcoded-texts.Reset"))+" ")],1),s("v-btn",{attrs:{color:"primary"},on:{click:e.onFilter}},[s("v-icon",{attrs:{left:""}},[e._v("mdi-content-save-check-outline")]),e._v(" "+e._s(e.$t("App.hardcoded-texts.Apply"))+" ")],1)],1)],1)],1)],1)],1)},a=[],r=(s(6699),s(4479)),o=s(9669),l=s.n(o),n={name:"ihris-report",props:["reportData","label","terms","termsConditions","dataURL","page","hideCheckboxes","hideLabel","hideExport","hideReportCustomization","disableOpenResourcePage"],data:function(){return{debug:"",downloading:!1,headers:[],allHeaders:[],results:[],selectedColumns:[],options:{itemsPerPage:10},loading:!1,total:0,prevPage:-1,link:[],selected:[],error_message:null,selectAll:!1,dialog:!1,resourcePage:""}},watch:{selected(){this.selected.length!==this.results.length&&this.selectAll&&(this.selectAll=!1),r.Y.$emit("ihris-report-selections",this.selected,this.reportData,this.terms,this.termsConditions,this.selectAll)},terms:{handler(){this.selectAll=!1,this.getTotalRecords(),this.getData(!0),r.Y.$emit("changedTerms",this.terms)},deep:!0},termsConditions:{handler(){Object.keys(this.terms).length>0&&(this.selectAll=!1,this.getTotalRecords(),this.getData(!0))},deep:!0},options:{handler(){this.getTotalRecords(),this.getData()},deep:!0}},computed:{itemsPerPage(){let e=[5,10,20,50];return e}},created:function(){this.getResourcePage(),this.reportData&&this.reportData.fieldsDetails&&this.reportData.fieldsDetails.sort(((e,t)=>null!=e[2]&&null==t[2]||null!=e[2]&&null!=t[2]&&e[2]<t[2]?-1:null!=t[2]&&null==e[2]||null!=e[2]&&null!=t[2]&&e[2]>t[2]?1:-1));for(let e of this.reportData.fieldsDetails)this.headers.push({text:this.$t(`App.reports.${e[0]}`),value:e[1]}),this.allHeaders.push({text:this.$t(`App.reports.${e[0]}`),value:e[1]});r.Y.$on("reload-report",(()=>{this.getTotalRecords(),this.getData()})),r.Y.$on("mhero-select-all",(()=>{this.selected=[],this.selected=this.results,this.selectAll=!0}))},methods:{rowClicked(e){this.$emit("rowSelected",e),this.resourcePage&&!this.disableOpenResourcePage&&this.$router.push({name:"resource_view",params:{page:this.resourcePage,id:e[this.resourcePageId]},query:this.queryParams})},reset(){this.headers=this.allHeaders,this.dialog=!1},onFilter(){this.dialog=!1,this.headers=this.allHeaders.filter((e=>{if(this.selectedColumns.includes(e.value))return e}))},clickIt:function(e){this.$router.push({name:"resource_view",params:{page:this.page,id:e.id}})},buildTerms(){let e,t=this.termsConditions,s={};if(s={must:[],must_not:[],ranges:[]},Object.keys(this.terms).length>0)for(let i in this.terms){let a=this.reportData.filters&&this.reportData.filters.find((e=>e.field===i)).dataType;if(this.terms[i]&&0!==this.terms[i].length)if(e=this.reportData.filters.find((e=>e.field===i)),"date"!==a||e.isDropDown)if(e.isDropDown||Array.isArray(this.terms[i])||(this.terms[i]=this.terms[i].replace(/\s+/g," ").trim()),Array.isArray(this.terms[i])){let e={};e[i]=[];for(let t of this.terms[i])e[i].push(t);"exclude"===this.termsConditions[i]?s.must_not.push(e):s.must.push(e)}else if(e.isDropDown){let e={};e[i]=[this.terms[i]],"exclude"===this.termsConditions[i]?s.must_not.push(e):s.must.push(e)}else{let e={};e[i]=this.terms[i],e.type=a,s.must.push(e)}else{let i=this.terms,a=[],r=e.field;if(t[r]&&"include"!==t[r]||(t[r]="="),"range"===t[r]){let e=i[r].sort(),t=e[0],s=e[1],o={gte:t,lte:s},l={};l[r]=o,a.push(l)}else{let e={},s={};e[t[r]]=i[r],s[r]=e,a.push(s)}s.ranges=a}}return r.Y.$emit("builtESTerms",s),s},getTotalRecords(){let e=`/fhir2sql/reportData/${this.reportData.indexName}/count`,t=this.buildTerms();t.reportOptions={locationBasedConstraint:this.reportData.locationBasedConstraint},fetch(e,{method:"POST",headers:{"Content-Type":"application/json"},body:JSON.stringify(t)}).then((e=>{e.json().then((e=>{this.total=parseInt(e[0].count),r.Y.$emit("report-total-records",this.total)}))}))},getData(e){this.loading=!0,this.error_message=null;let t="";e&&(this.options.page=1);let s=this.options.itemsPerPage||10;-1===s&&(s=this.total);let i=this.options.page*this.options.itemsPerPage-this.options.itemsPerPage;t=`/fhir2sql/reportData/${this.reportData.indexName}`,this.prevPage=this.options.page;let a=this.buildTerms();a.limit=s,a.offset=i,a.reportOptions={locationBasedConstraint:!0};let r=[];for(let o in this.options.sortBy){let e=this.options.sortBy[o],t={};this.options.sortDesc[o]?t[e]="desc":t[e]="asc",r.push(t)}a.sort=r,fetch(t,{method:"POST",headers:{"Content-Type":"application/json"},body:JSON.stringify(a)}).then((e=>{e.json().then((e=>{if(this.results=[],e.length>0){this.link=e.link;for(let t of e){let e={};for(let s in t)e[s]=t[s];e.id=t["id"],this.results.push(e)}}this.selectAll&&(this.selected=this.results),this.loading=!1})).catch((e=>{this.loading=!1,this.error_message="Unable to load results.",console.log(e)}))})).catch((e=>{this.loading=!1,this.error_message="Unable to load results.",console.log(e)}))},reportExport(e){this.downloading=!0;let t=`/fhir2sql/export/${e}/${this.reportData.indexName}`,s={query:this.buildTerms(),headers:this.headers,label:this.$t(`App.reports.${this.label}`),selected:this.selected};l()({url:t,method:"POST",responseType:"blob",data:s}).then((t=>{this.downloading=!1;let s=new Blob([t.data],{type:"text/csv"}),i=document.createElement("a");i.href=window.URL.createObjectURL(s),i.download=this.$t(`App.reports.${this.label}`)+"."+e,i.click()}))},getResourcePage(){let e=`/fhir/Basic/${this.page}?_pretty=true`;fetch(e).then((e=>{e.json().then((e=>{let t=e.extension.find((e=>"http://ihris.org/fhir/StructureDefinition/iHRISReportDetails"===e.url)),s=t.extension.find((e=>"resourcePage"===e.url))?.valueString,i=t.extension.find((e=>"resourcePageID"===e.url))?.valueString;this.resourcePage=s,this.resourcePageId=i,this.resourcePageId||(this.resourcePageId="id");let a=t.extension.filter((e=>"http://ihris.org/fhir/StructureDefinition/iHRISReportParameters"===e.url));a.map((e=>{let t,s;e.extension.map((e=>{"esFieldName"===e.url&&(t=e.valueString),"parameter"===e.url&&(s=e.valueString)})),this.queryParams[t]=s}))}))}))}}},h=n,c=s(3736),d=s(3453),p=s.n(d),u=s(3150),m=s(2371),v=s(7118),g=s(3702),f=s(2102),x=s(4228),b=s(865),y=s(4497),C=s(1418),_=s(6845),D=s(2443),k=s(1192),w=s(5630),P=s(6428),$=s(4470),A=s(624),V=s(2877),Z=s(9762),S=(0,c.Z)(h,i,a,!1,null,null,null),I=S.exports;p()(S,{VBtn:u.Z,VCard:m.Z,VCardActions:v.h7,VCardSubtitle:v.Qq,VCardText:v.ZB,VCardTitle:v.EB,VCheckbox:g.Z,VCol:f.Z,VContainer:x.Z,VDataTable:b.Z,VDialog:y.Z,VDivider:C.Z,VExpansionPanel:_.Z,VExpansionPanelContent:D.Z,VExpansionPanelHeader:k.Z,VExpansionPanels:w.Z,VIcon:P.Z,VLayout:$.Z,VProgressCircular:A.Z,VRow:V.Z,VSpacer:Z.Z})}}]);
//# sourceMappingURL=ihris-es-report.bf0cee6c.js.map