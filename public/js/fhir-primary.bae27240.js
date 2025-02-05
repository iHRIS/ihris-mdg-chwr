"use strict";(self["webpackChunkiHRIS_v5"]=self["webpackChunkiHRIS_v5"]||[]).push([[657],{3205:function(t,e,i){i.d(e,{Z:function(){return o}});var s=i(8085),r=i(3325),o=(0,r.Z)(s.Z).extend({name:"v-subheader",props:{inset:Boolean},render(t){return t("div",{staticClass:"v-subheader",class:{"v-subheader--inset":this.inset,...this.themeClasses},attrs:this.$attrs,on:this.$listeners},this.$slots.default)}})},603:function(t,e,i){i.r(e),i.d(e,{default:function(){return m}});var s=function(){var t=this,e=t.$createElement,i=t._self._c||e;return t.hide?t._e():i("ihris-element",{attrs:{edit:t.edit,loading:t.loading},scopedSlots:t._u([{key:"form",fn:function(){return[i("v-autocomplete",{attrs:{loading:t.loading,label:t.$t("App.fhir-resources-texts."+t.display),items:t.items.filter((function(t){return!t.code.includes("(deactivated)")})),outlined:"","hide-details":"auto","error-messages":t.errors,"item-text":"display","item-value":"code",disabled:t.disabled,rules:t.rules,dense:""},on:{change:function(e){t.errors=[]}},scopedSlots:t._u([{key:"label",fn:function(){return[t._v(t._s(t.$t("App.fhir-resources-texts."+t.display))+" "),t.required?i("span",{staticClass:"red--text font-weight-bold"},[t._v("*")]):t._e()]},proxy:!0}],null,!1,3110236810),model:{value:t.value,callback:function(e){t.value=e},expression:"value"}})]},proxy:!0},{key:"header",fn:function(){return[t._v(" "+t._s(t.$t("App.fhir-resources-texts."+t.display))+" ")]},proxy:!0},{key:"value",fn:function(){return[t._v(" "+t._s(t.displayValue)+" ")]},proxy:!0}],null,!1,2837257624)})},r=[],o=i(2130),a=i(8892),n=i(1997),l={name:"fhir-code",props:["field","min","max","base-min","base-max","label","binding","slotProps","path","edit","sliceName","readOnlyIfSet","constraints","displayCondition","enableBehavior"],components:{IhrisElement:o.Z},mixins:[n.x],data:function(){return{value:"",loading:!0,errors:[],items:[],source:{path:"",data:{},binding:this.binding},disabled:!1,lockWatch:!1}},created:function(){this.hideShowField(this.displayCondition,this.enableBehavior),this.setupData()},watch:{slotProps:{handler(){this.lockWatch||this.setupData()},deep:!0},value(t){a.Y.$emit(this.path,t)}},methods:{setupData(){if(this.slotProps&&this.slotProps.source){if(this.source={path:this.slotProps.source.path+"."+this.field,data:{}},this.slotProps.source.fromArray)this.source.data=this.slotProps.source.data,this.value=this.source.data,this.lockWatch=!0;else{let t=this.$fhirutils.pathFieldExpression(this.field);this.source.data=this.$fhirpath.evaluate(this.slotProps.source.data,t);let e=null;if(1==this.source.data.length)e=this.source.data[0];else{let t,i=this.path.split("[");for(let e of i){let i=e.split("]");Number.isInteger(parseInt(i[0]))&&(t=i[0])}(t||0==t)&&(e=this.source.data[t])}null!=e&&(this.value=e,this.lockWatch=!0)}this.disabled=this.readOnlyIfSet&&!!this.value}let t,e=this.binding||this.slotProps.source.binding;console.log("BINDING1",e);let i=this.$i18n.locale;i&&(t={language:i}),this.$fhirutils.expand(e,t).then((t=>{this.items=t,this.loading=!1})).catch((t=>{console.log(t),this.errors.push(t.message),this.loading=!1}))}},computed:{index:function(){return this.slotProps&&this.slotProps.input?this.slotProps.input.index:void 0},display:function(){return this.slotProps&&this.slotProps.input?this.slotProps.input.label:this.label},displayValue:function(){let t=this.items.find((t=>t.code===this.value));return t?t.display:""},required:function(){return(this.index||0)<this.min},rules:function(){return this.required?[t=>!!t||this.$t(`App.fhir-resources-texts.${this.display}`)+" "+this.$t("App.hardcoded-texts.is required")]:[]}}},c=l,h=i(3736),d=i(3453),u=i.n(d),p=i(1835),f=(0,h.Z)(c,s,r,!1,null,null,null),m=f.exports;u()(f,{VAutocomplete:p.Z})},1311:function(t,e,i){i.r(e),i.d(e,{default:function(){return m}});var s=function(){var t=this,e=t.$createElement,i=t._self._c||e;return t.hide?t._e():i("ihris-element",{attrs:{edit:t.edit,loading:t.loading},scopedSlots:t._u([{key:"form",fn:function(){return[i("v-autocomplete",{attrs:{loading:t.loading,label:t.display,items:t.items.filter((function(t){return!t.code.includes("(deactivated)")})),outlined:"","hide-details":"auto","error-messages":t.errors,"item-text":"display","item-value":"code",disabled:t.disabled,rules:t.rules,dense:""},on:{change:function(e){t.errors=[]}},scopedSlots:t._u([{key:"label",fn:function(){return[t._v(t._s(t.$t("App.fhir-resources-texts."+t.label))+" "),t.required?i("span",{staticClass:"red--text font-weight-bold"},[t._v("*")]):t._e()]},proxy:!0}],null,!1,3654946902),model:{value:t.valueCode,callback:function(e){t.valueCode=e},expression:"valueCode"}})]},proxy:!0},{key:"header",fn:function(){return[t._v(" "+t._s(t.$t("App.fhir-resources-texts."+t.display))+" ")]},proxy:!0},{key:"value",fn:function(){return[t._v(" "+t._s(t.valueDisplay||t.value.display||"")+" ")]},proxy:!0}],null,!1,1368762095)})},r=[],o=i(2130),a=i(8892),n=i(1997),l={name:"fhir-coding",props:["field","label","sliceName","targetprofile","min","max","base-min","base-max","slotProps","path","binding","edit","readOnlyIfSet","constraints","displayCondition","enableBehavior"],components:{IhrisElement:o.Z},mixins:[n.x],data:function(){return{value:{system:"",code:"",display:""},valueCode:"",valueDisplay:"",loading:!0,errors:[],items:[],source:{path:"",data:{},binding:this.binding},disabled:!1,lockWatch:!1}},created:function(){this.hideShowField(this.displayCondition,this.enableBehavior),this.setupData()},watch:{slotProps:{handler(){this.lockWatch||this.setupData()},deep:!0},valueCode:function(t){if(this.items){let e=this.items.find((e=>e.code===t));e&&(this.value=e)}this.value.system&&this.value.code&&this.$fhirutils.codeLookup(this.value.system,this.value.code,this.binding||this.source.binding).then((t=>{this.valueDisplay=t})),a.Y.$emit(this.path,this.value.system+"#"+this.value.code)}},methods:{setupData:function(){if(this.slotProps&&this.slotProps.source){if(this.source={path:this.slotProps.source.path+"."+this.field,data:{},binding:this.binding||this.slotProps.source.binding},this.slotProps.source.fromArray)this.source.data=this.slotProps.source.data,this.source.data&&(this.value=this.source.data,this.valueCode=this.value.code,this.lockWatch=!0);else{let t=this.$fhirutils.pathFieldExpression(this.field);this.source.data=this.$fhirpath.evaluate(this.slotProps.source.data,t);let e=null;if(1==this.source.data.length)e=this.source.data[0];else{let t,i=this.path.split("[");for(let e of i){let i=e.split("]");Number.isInteger(parseInt(i[0]))&&(t=i[0])}(t||0==t)&&(e=this.source.data[t])}null!=e&&(this.value=e,this.valueCode=this.value.code,this.lockWatch=!0)}this.disabled=this.readOnlyIfSet&&!!this.valueCode}let t,e=this.binding||this.slotProps.source.binding,i=this.$i18n.locale;i&&(t={language:i}),this.$fhirutils.expand(e,t).then((t=>{this.items=t,this.loading=!1})).catch((t=>{console.log(t),this.errors=t.message,this.loading=!1}))}},computed:{index:function(){return this.slotProps&&this.slotProps.input?this.slotProps.input.index:void 0},display:function(){return this.slotProps&&this.slotProps.input?this.slotProps.input.label:this.label},required:function(){return(this.index||0)<this.min},rules:function(){return this.required?[t=>!!t||this.$t(`App.fhir-resources-texts.${this.display}`)+" "+this.$t("App.hardcoded-texts.is required")]:[]}}},c=l,h=i(3736),d=i(3453),u=i.n(d),p=i(1835),f=(0,h.Z)(c,s,r,!1,null,null,null),m=f.exports;u()(f,{VAutocomplete:p.Z})},3858:function(t,e,i){i.r(e),i.d(e,{default:function(){return h}});var s=function(){var t=this,e=t.$createElement,i=t._self._c||e;return i("ihris-complex-card",{attrs:{complexField:t.field,slotProps:t.slotProps,label:t.label,errors:t.errors},scopedSlots:t._u([{key:"default",fn:function(e){return[t._t("default",null,{source:e.source})]}}],null,!0)})},r=[],o=i(6972),a={name:"fhir-identifier",props:["field","slotProps","sliceName","min","max","base-min","base-max","label","path","edit","constraints"],data:function(){return{errors:[]}},components:{IhrisComplexCard:o.Z}},n=a,l=i(3736),c=(0,l.Z)(n,s,r,!1,null,null,null),h=c.exports},2130:function(t,e,i){i.d(e,{Z:function(){return v}});var s=function(){var t=this,e=t.$createElement,i=t._self._c||e;return i("div",[t.edit?i("v-container",[t._t("form")],2):i("div",[i("v-row",{attrs:{dense:""}},[i("v-col",{staticClass:"font-weight-bold",attrs:{cols:t.$store.state.cols.header}},[t._t("header")],2),t.loading?i("v-col",{attrs:{cols:t.$store.state.cols.content}},[i("v-progress-linear",{attrs:{indeterminate:"",color:"primary"}})],1):i("v-col",{attrs:{cols:t.$store.state.cols.content}},[t._t("value")],2)],1),i("v-divider")],1)],1)},r=[],o={name:"ihris-element",props:["edit","loading"]},a=o,n=i(3736),l=i(3453),c=i.n(l),h=i(2102),d=i(4228),u=i(1418),p=i(7003),f=i(2877),m=(0,n.Z)(a,s,r,!1,null,null,null),v=m.exports;c()(m,{VCol:h.Z,VContainer:d.Z,VDivider:u.Z,VProgressLinear:p.Z,VRow:f.Z})},2765:function(t,e,i){i.r(e),i.d(e,{default:function(){return b}});var s=function(){var t=this,e=t.$createElement,i=t._self._c||e;return i("v-snackbar",{attrs:{id:"elementToHide",bottom:t.bottom,right:t.bottom,timeout:t.timeout,color:"white",width:"320"},scopedSlots:t._u([{key:"action",fn:function(e){var s=e.attrs;return[i("v-btn",t._b({attrs:{icon:"",small:"",color:"green"},on:{click:function(e){t.expand=!0}}},"v-btn",s,!1),[i("v-icon",[t._v("mdi-arrow-expand")])],1)]}}]),model:{value:t.snackbar,callback:function(e){t.snackbar=e},expression:"snackbar"}},[i("div",[t.expand?i("v-card",{attrs:{color:"white",elevation:"0",height:"400",width:"320"}},[i("template",{slot:"progress"},[i("v-progress-linear",{attrs:{color:"deep-purple",height:"10",indeterminate:""}})],1),i("v-card-title",{staticClass:"pa-0 pb-2 pr-2"},[i("h4",{staticClass:"black--text"},[t._v(t._s(t.$t("App.intro."+t.title)))]),i("v-spacer"),i("v-btn",{staticClass:"justify-end",attrs:{color:"warning",icon:"",small:""},on:{click:function(e){t.expand=!1}}},[i("v-icon",[t._v("mdi-close-box-multiple-outline")])],1)],1),i("hr",{staticClass:"dotted-divider"}),i("br"),i("v-card-title",{staticClass:"justify-center",staticStyle:{"padding-top":"4px","padding-bottom":"4px"}},[t.showImage&&t.photoURL?i("v-avatar",{attrs:{size:"120",tile:""}},[i("img",{attrs:{src:t.photoURL,alt:"photo"}})]):t._e()],1),i("v-simple-table",{attrs:{height:t.showImage?250:"auto",light:""}},[i("tbody",t._l(Object.entries(this.data),(function(e){var s=e[0],r=e[1];return i("tr",{key:s},[i("td",{staticClass:"body-1",staticStyle:{"text-align":"left"}},[i("strong",[t._v(t._s(t.$t("App.intro."+s))+":")])]),i("td",{staticClass:"subtitle-1"},[t._v(t._s(r))])])})),0)])],2):t._e()],1),i("h4",{staticClass:"black--text"},[t._v(t._s(t.$t("App.intro."+t.title)))])])},r=[],o={name:"ihris-practitioner-intro",data:function(){return{practitionerId:void 0,practitioner:{},practitionerRole:{},title:"",show:!0,snackbar:!1,timeout:-1,bottom:!0,right:!0,showImage:!1,photoURL:void 0,data:{},expand:!1,page:void 0}},components:{},watch:{slotProps:{practitionerId(){this.setupData()},handler(){this.lockWatch||this.setupData()},deep:!0}},methods:{setupData(){this.practitionerId&&(fetch(`/fhir/PractitionerRole?practitioner=${this.practitionerId}&_sort=-date,-_id`).then((t=>{t.json().then((t=>{if(t.entry&&t.entry.length){let e;t.entry[0].resource.code&&(e=t.entry[0].resource),this.practitionerRole=e||""}})).catch((t=>{console.log(this.field,this.fhirId,t)}))})).catch((t=>{console.log(this.field,this.fhirId,t)})),fetch("/fhir/Practitioner/"+this.practitionerId).then((t=>{t.json().then((t=>{"Practitioner"===t.resourceType&&(this.practitioner=t,this.snackbar=!0)})).catch((t=>{console.log(t)}))})).catch((t=>{console.log(t)})))},getParameter(){this.$router.history.current?.params?.page&&(this.page=this.$router.history.current.params.page),this.$router.history.current.query&&(this.$router.history.current?.query["PractitionerRole.practitioner.reference"]&&(this.practitionerId=this.$router.history.current.query["PractitionerRole.practitioner.reference"].split("/").pop()),this.$router.history.current?.query["practitioner"]&&(this.practitionerId=this.$router.history.current.query["practitioner"])),this.$router.history.current.params?.id&&(this.practitionerId=this.$router.history.current.params.id),this.setupData(),fetch("/auth").then((()=>{fetch("/config/site").then((t=>{t.json().then((t=>{let e;t.hasOwnProperty("intro")&&(e=t.intro.hasOwnProperty(this.page)?t.intro[this.page]:t.intro.default),this.title=e.title;let i=e.data,s=Object.keys(i);for(let r of s)if(i[r]?.path&&i[r]?.path.includes(",")){let t=i[r].path.split(","),e=t.map((t=>{let e=this.practitioner;return t.startsWith("PractitionerRole")&&(e=this.practitionerRole),this.$fhirpath.evaluate(e,t)}));this.data[i[r].text]=e.join(",")}else{let t=this.practitioner;i[r]?.path&&i[r].path.startsWith("PractitionerRole")&&(t=this.practitionerRole);let e=this.$fhirpath.evaluate(t,i[r].path);if("photo"===i[r]?.type){if(this.showImage=!0,e?.length>0){let t=e[0];if(t.data&&t.contentType){let e="data:"+t.contentType+";base64,"+t.data;fetch(e).then((t=>t.blob())).then((t=>{this.photoURL=URL.createObjectURL(t)})).catch((t=>{console.log("Failed to get data from base64.",t)}))}}}else this.data[i[r].text]="object"===typeof e?e.join(","):e}}))}))}))}},mounted(){this.getParameter()}},a=o,n=i(3736),l=i(3453),c=i.n(l),h=i(6370),d=i(3150),u=i(2371),p=i(7118),f=i(6428),m=i(7003),v=i(3568),g=i(3202),y=i(9762),x=(0,n.Z)(a,s,r,!1,null,"68604648",null),b=x.exports;c()(x,{VAvatar:h.Z,VBtn:d.Z,VCard:u.Z,VCardTitle:p.EB,VIcon:f.Z,VProgressLinear:m.Z,VSimpleTable:v.Z,VSnackbar:g.Z,VSpacer:y.Z})},273:function(t,e,i){i.r(e),i.d(e,{default:function(){return Z}});var s=function(){var t=this,e=t.$createElement,i=t._self._c||e;return i("v-container",{key:t.pageKey,staticClass:"my-3"},[i("v-form",{ref:"form",attrs:{id:"print"},model:{value:t.valid,callback:function(e){t.valid=e},expression:"valid"}},[this.edit?t._e():i("div",{staticClass:"print-section"},[i("v-btn",{staticClass:"pr-12",attrs:{id:"elementToHide",color:"primary",icon:"",small:"",text:""},on:{click:t.printPage}},[i("v-icon",[t._v("mdi-printer-outline")]),t._v(" "+t._s(t.$t("App.hardcoded-texts.Print"))+" ")],1)],1),t._t("default",null,{source:t.source}),i("v-overlay",{attrs:{value:t.overlay}},[i("v-progress-circular",{attrs:{color:"primary",indeterminate:"",size:"50"}})],1),i("v-navigation-drawer",{staticClass:"primary darken-1 white--text",staticStyle:{"z-index":"3"},attrs:{id:"elementToHide",app:"",clipped:"",permanent:"",right:""}},[i("v-list",{staticClass:"white--text"},[t.edit?i("v-list-item",[t.edit?i("v-btn",{staticClass:"secondary",attrs:{dark:""},on:{click:function(e){return t.$router.go(-1)}}},[i("v-icon",{attrs:{light:""}},[t._v("mdi-close-circle-outline")]),i("span",[t._v(t._s(t.$t("App.hardcoded-texts.Cancel")))])],1):t._e(),i("v-spacer"),t.edit?[t.valid?i("v-btn",{staticClass:"success darken-1",attrs:{disabled:!t.valid,dark:""},on:{click:function(e){return t.processFHIR()}}},[i("v-icon",{attrs:{light:""}},[t._v("mdi-content-save")]),i("span",[t._v(t._s(t.$t("App.hardcoded-texts.Save")))])],1):i("v-btn",{staticClass:"warning",attrs:{dark:""},on:{click:function(e){return t.$refs.form.validate()}}},[i("v-icon",{attrs:{light:""}},[t._v("mdi-content-save")]),i("span",[t._v(t._s(t.$t("App.hardcoded-texts.Save")))])],1)]:t._e()],2):t._e(),i("v-divider",{attrs:{color:"white"}}),!t.edit&&t.links&&t.links.length&&t.linksready?t._l(t.links,(function(e,s){return i("v-list-item",{key:e.url},[i("v-btn",{key:e.url,class:e.linkclass,attrs:{text:!e.button,to:t.getLinkUrl(e)}},[e.icon?i("v-icon",{attrs:{light:""}},[t._v(t._s(e.icon))]):t._e(),t._v(" "+t._s(t.$t("App.fhir-resources-texts."+t.linktext[s]))+" ")],1)],1)})):t._e(),i("v-divider",{attrs:{color:"white"}}),t.sectionMenu?i("v-subheader",{staticClass:"white--text"},[i("h2",[t._v(t._s(t.$t("App.hardcoded-texts.Sections")))])]):t._e(),t._l(t.sectionMenu,(function(e){return i("v-list-item",{key:e.name,class:"#section-"+e.name===t.path?"highlighted":"",attrs:{id:"#section-"+e.name},on:{click:function(i){return t.scrollTo(e.name)}}},[t.edit&&e.secondary?t._e():i("v-list-item-content",{staticClass:"white--text"},[i("v-list-item-title",{staticClass:"text-uppercase"},[i("h4",[t._v(t._s(t.$t("App.fhir-resources-texts."+e.title)))])]),i("v-list-item-subtitle",{staticClass:"white--text"},[t._v(t._s(t.$t("App.fhir-resources-texts."+e.desc)))])],1)],1)}))],2)],1),this.edit?t._e():i("v-card",{staticClass:"mx-auto mb-4 rounded-lg",attrs:{"max-width":"700",outlined:""}},[i("v-card-title",{staticClass:"primary font-weight-bold caption pa-2 white--text justify-center ",attrs:{id:"elementToHide"}},[t._v("Record History ")]),i("v-card-text",{staticClass:"my-3"},[i("v-row",{staticClass:"justify-space-between",attrs:{id:"elementToHide"}},[i("v-col",{attrs:{cols:"4"}},[i("span",{staticClass:"font-weight-bold"},[t._v("Record Id:")])]),i("v-col",{attrs:{cols:"8"}},[t._v(t._s(this.$data.orig.id))])],1),i("v-divider"),i("v-row",{staticClass:"justify-space-between"},[i("v-col",{attrs:{cols:"4"}},[i("span",{staticClass:"font-weight-bold"},[t._v("Last Updated:")])]),t.$data.orig&&t.$data.orig.meta?i("v-col",{attrs:{cols:"8"}},[t._v(" "+t._s(new Date(this.$data.orig.meta.lastUpdated))+" ")]):t._e()],1),i("v-divider"),i("v-row",{staticClass:"justify-space-between"},[i("v-col",{attrs:{cols:"4"}},[i("span",{staticClass:"font-weight-bold"},[t._v("Version:")])]),t.$data.orig&&t.$data.orig.meta?i("v-col",{attrs:{cols:"8"}},[t._v(t._s(t.$data.orig.meta.versionId)+" of "+t._s(t.max))]):t._e()],1),i("v-divider"),i("v-row",{staticClass:"justify-space-between",attrs:{id:"elementToHide"}},[i("v-col",{attrs:{cols:"4"}},[i("span",{staticClass:"font-weight-bold"},[t._v("See older version:")])]),i("v-col",{attrs:{cols:"8"}},[i("v-row",[i("v-col",{staticClass:"px-4",attrs:{cols:"2"}},[t.$data.orig.meta?i("v-text-field",{staticClass:"mt-0 pt-0",staticStyle:{width:"40px"},attrs:{max:t.max,rules:[t.rules.min,t.rules.max],value:t.$data.orig.meta.versionId,"hide-details":"",min:"1","single-line":"",type:"number"},model:{value:t.version,callback:function(e){t.version=t._n(e)},expression:"version"}}):t._e()],1),i("v-col",{staticClass:"px-4"},[i("v-btn",{attrs:{disabled:t.version>t.max||t.version<1,color:"primary",icon:"",small:""},on:{click:t.changeVersion}},[i("v-icon",[t._v("mdi-eye")])],1)],1)],1)],1)],1),i("v-divider")],1)],1)],2)],1)},r=[],o=(i(6699),{name:"ihris-resource",props:["title","field","fhir-id","fhir-version","page","profile","section-menu","edit","links","mounts","constraints","show-drawer"],data:function(){return{fhir:{},orig:{},valid:!0,source:{data:{},path:""},mountedSources:{},path:"",loading:!1,overlay:!1,isEdit:!1,linktext:[],linksready:!1,advancedValid:!0,loadingId:!1,loadingCv:!1,version:1,max:1,pageKey:0,rules:{min:t=>t>=1||"The Min is 1",max:t=>t<=this.max||`The Max is ${this.max}`}}},created:function(){if(this.fhirId){this.loading=!0;let t="/fhir/"+this.field+"/"+this.fhirId;this.fhirVersion&&(t="/fhir/vRead/"+this.field+"/"+this.fhirId+"/"+this.fhirVersion,this.version=this.fhirVersion),fetch(t).then((t=>{t.json().then((async t=>{if(this.$store.state.user&&this.$store.state.user.obj&&this.$store.state.user.obj.resource&&this.$store.state.user.obj.resource.extension){let e=this.$store.state.user.obj.resource.extension.find((t=>"http://ihris.org/fhir/StructureDefinition/ihris-user-location"===t.url));if(e){let i=t.extension.find((t=>"http://ihris.org/fhir/StructureDefinition/ihris-related-group"===t.url));if(i){let t=i.extension.find((t=>"location"===t.url));if(t){let t=i.extension.find((t=>"location"===t.url&&t.valueString===e.valueReference.reference));t||(this.$store.state.message.active=!0,this.$store.state.message.type="error",this.$store.state.message.text="You dont have access to view this record",this.$router.push({path:"/"}))}}}}this.max=t.meta.versionId,this.orig=t,this.source={data:t,path:this.field},await this.setMountedRefs(t),this.setLinkText(),this.linksready=!0,this.loading=!1})).catch((t=>{console.log(this.field,this.fhirId,t)}))})).catch((t=>{console.log(this.field,this.fhirId,t)}))}else if(this.$route.query){let e={resourceType:this.field},i=!1;for(let s of Object.keys(this.$route.query))if(s.startsWith(this.field+".")){i=!0;let r=s.substring(this.field.length+1).split("."),o=r.pop(),a=e;for(let e of r)if(e.includes("["))try{let t=e.split("["),i=t[0],s=t[1].slice(0,-1);if(a.hasOwnProperty(i)||(a[i]=[]),s){let t={};a[i][parseInt(s)]=t,a=t}else{let t={};a[i].push(t),a=t}}catch(t){console.log("Unable to process",s)}else a.hasOwnProperty(e)||(a[e]={},a=a[e]);if(o.includes("["))try{let t=o.split("["),e=t[0],i=t[1].slice(0,-1);a.hasOwnProperty(e)||(a[e]=[]),i?a[e][parseInt(i)]=this.$route.query[s]:a[e].push(this.$route.query[s])}catch(t){console.log("Unable to process",s)}else a[o]=this.$route.query[s]}i&&(this.source={data:e,path:this.field})}},computed:{hasFhirId:function(){return""!=this.fhirId&&!!this.fhirId}},methods:{scrollTo(t){document.getElementById(`section-${t}`).scrollIntoView()},handleScroll(){this.hasScrolled=window.top.scrollY>=100,this.sectionMenu.map((t=>{let e=document.getElementById(`section-${t.name}`),i=e.offsetTop;pageYOffset>=i&&(this.path=`#section-${t.name}`)}))},setMountedRefs(){return new Promise((t=>{if(!this.mounts||0===this.mounts.length)return t();let e,i=this.mounts.shift(),s=i.fromref.split(".")[0];this.mountedSources[s]?(e={},e[s]=this.mountedSources[s]):e=this.source.data;let r=this.$fhirpath.evaluate(e,i.fromref);r?fetch("/fhir/"+r[0].split("/")[0]+"/"+r[0].split("/")[1]).then((e=>{e.json().then((async e=>{this.mountedSources[i.name]=e,this.mounts.length>0?(await this.setMountedRefs(e),t()):t()}))})):t()}))},getLinkField:function(t){let e=this.$fhirpath.evaluate(this.source.data,t);return!!e&&e[0]},getMountedLinkParameters(t){let e=t.split("{"),i=[];for(let s of e)if(s.includes("}")){let t=s.split("}")[0];i.push(t)}return i},getLinkUrl:function(t){let e,i=this.getMountedLinkParameters(t.url);if(i.length>0)for(let s of i){let e=this.$fhirpath.evaluate(this.mountedSources,s);if(e){if(e[0].includes("/")){let t=e[0].split("/");e[0]=t[1]}t.url=t.url.replace("{"+s+"}",e[0])}}if(t.field&&(e=this.getLinkField(t.field)),e){if(e.includes("/")){let t=e.split("/");e=t[1]}return t.url.replace("FIELD",e)}return t.url},setLinkText:function(){for(let t in this.links){let e=this.links[t];if(e.text)this.$set(this.linktext,t,e.text);else if(e.field){let i=this.getLinkField(e.field);i&&this.$fhirutils.lookup(i).then((e=>{this.$set(this.linktext,t,e)}))}}},processFHIR:async function(){if(this.$refs.form.validate(),!this.valid)return;this.advancedValid=!0,this.overlay=!0,this.loading=!0;const t=async(e,i,s)=>{for(let o of s){let s=e,a=i;if(o.field&&!o.fieldType){let t;if(o.sliceName?o.field.startsWith("value[x]")?(t=o.field.substring(9),s+="."+t):(t=o.field.replace(":"+o.sliceName,""),s+="."+t):(t=o.field,s+="."+t),"1"!==o.max||"1"!==o.baseMax?i.hasOwnProperty(t)||(a[t]=[]):a[t]={},o.hasOwnProperty("value"))Array.isArray(a[t])?a[t].push(o.value):a[t]=o.value,a=a[t];else if(Array.isArray(a[t])){let e={};o.profile?e.url=o.profile:"extension"===t&&o.sliceName&&(e.url=o.sliceName),a[t].push(e),a=e}else a=a[t]}if(o.$children)try{await t(s,a,o.$children)}catch(r){this.advancedValid=!1,console.log(r)}if(o.constraints){o.errors=[];try{this.advancedValid=this.advancedValid&&await this.$fhirutils.checkConstraints(o.constraints,this.constraints,a,o.errors,this.fhirId)}catch(r){this.advancedValid=!1,o.errors.push("An unknown error occurred."),console.log(r)}}}};this.fhir={resourceType:this.field,meta:{profile:[this.profile]}};try{await t(this.field,this.fhir,this.$children)}catch(s){this.advancedValid=!1,console.log(s)}if(!this.advancedValid)return this.overlay=!1,this.loading=!1,void this.$store.commit("setMessage",{type:"error",text:"There were errors on the form."});console.log("FINISHED PROCESS AND CHECK.");let e="/fhir/"+this.field,i={method:"POST",headers:{"Content-Type":"application/fhir+json"},redirect:"manual"};this.fhirId&&(this.fhir.id=this.fhirId,e+="/"+this.fhirId,i.method="PUT"),i.body=JSON.stringify(this.fhir),fetch(e,i).then((t=>{201!==t.status&&200!==t.status||t.json().then((t=>{this.overlay=!1,this.loading=!1,this.fhirId?(this.$store.commit("setMessage",{type:"success",text:"Update successful."}),setTimeout((()=>this.$router.go(0)),1e3)):this.$router.push({name:"resource_view",params:{page:this.page,id:t.id}})}))}))},changeVersion(){fetch("/fhir/vRead/"+this.field+"/"+this.fhirId+"/"+this.version).then((t=>{t.json().then((t=>{this.orig=t,this.source={data:t,path:this.field},this.setLinkText(),this.loading=!1,this.pageKey+=1})).catch((t=>{console.log(this.field,this.fhirId,t)}))})).catch((t=>{console.log(this.field,this.fhirId,t)}))},printPage(){this.$root.$emit("printPage",!0),this.$nextTick((()=>{let t=document.getElementById("print").innerHTML,e="";for(const a of[...document.querySelectorAll('link[rel="stylesheet"], style')])e+=a.outerHTML;let i=document.createElement("iframe");i.name="windowsFrame",i.style.position="absolute",i.style.top="-1000000px",document.body.appendChild(i);let s=i.contentWindow?i.contentWindow:i.contentDocument.document?i.contentDocument.document:i.contentDocument;s.document.write(`<!DOCTYPE html>\n                  <html>\n                    <head>\n                      ${e}\n                      <style>\n                </style>\n                    </head>\n                      ${t}\n                    </body>\n                  </html>`);const r=s.document.getElementById("section-language");if(r){const t=r.querySelector(".v-card__title");r.textContent.trim().length===t.textContent.trim().length&&(r.style.display="none")}const o=s.document.querySelectorAll("#section-element-to-hide");return o.forEach((t=>{const e=t.closest(".ihris-section");e&&(e.style.display="none")})),s.document.close(),setTimeout((function(){window.frames["windowsFrame"].focus(),window.frames["windowsFrame"].print(),document.body.removeChild(i)}),500),!1}))}}}),a=o,n=i(3736),l=i(3453),c=i.n(l),h=i(3150),d=i(2371),u=i(7118),p=i(2102),f=i(4228),m=i(1418),v=i(6232),g=i(6428),y=i(6816),x=i(7620),b=i(4562),_=i(5132),$=i(1058),k=i(624),w=i(2877),C=i(9762),P=i(3205),I=i(5978),V=(0,n.Z)(a,s,r,!1,null,"10475a6a",null),Z=V.exports;c()(V,{VBtn:h.Z,VCard:d.Z,VCardText:u.ZB,VCardTitle:u.EB,VCol:p.Z,VContainer:f.Z,VDivider:m.Z,VForm:v.Z,VIcon:g.Z,VList:y.Z,VListItem:x.Z,VListItemContent:b.km,VListItemSubtitle:b.oZ,VListItemTitle:b.V9,VNavigationDrawer:_.Z,VOverlay:$.Z,VProgressCircular:k.Z,VRow:w.Z,VSpacer:C.Z,VSubheader:P.Z,VTextField:I.Z})},371:function(t,e,i){i.r(e),i.d(e,{default:function(){return y}});var s=function(){var t=this,e=t.$createElement,i=t._self._c||e;return t.edit?t._e():i("v-container",{staticClass:"my-3",attrs:{id:t.computedId}},["false"!=t.emptyDisplay?i("v-data-table",{staticClass:"elevation-1",attrs:{headers:t.translatedHeader,items:t.items,"item-key":"id","items-per-page":t.itemsPerPage,loading:t.loading,dense:"","footer-props":{"items-per-page-text":t.$t("App.hardcoded-texts.tableText"),"items-per-page-options":t.itemsPerPageOptions}},scopedSlots:t._u([{key:"top",fn:function(){return[i("v-toolbar",{attrs:{flat:"",color:"white"}},[i("v-toolbar-title",[t._v(" "+t._s(t.$t("App.fhir-resources-texts."+t.title))+" ")]),i("v-spacer"),t._l(t.topActions,(function(e){return i("v-btn",{key:e.text,attrs:{to:t.setupLink(e.link,{}),color:e.class,id:"elementToHide",small:""}},[t._v(" "+t._s(t.$t("App.fhir-resources-texts."+e.text))+" ")])}))],2)]},proxy:!0},{key:"item._action",fn:function(e){var s=e.item;return t._l(s.actions,(function(e){return i("v-btn",{key:e.text,attrs:{to:t.setupLink(e.link,s),color:e.class,small:"",rounded:"",id:"elementToHide"}},[t._v(" "+t._s(e.text)+" ")])}))}}],null,!1,1330114862)}):t._e()],1)},r=[];const o=t=>!!t&&t.constructor===Object;var a={name:"ihris-secondary",props:["title","field","profile","slotProps","link-id","link-field","search-field","search-field-target","edit","columns","actions","empty-display","dateFormat"],data:function(){return{source:{data:{},path:this.field},empty:!0,itemsPerPage:5,itemsPerPageOptions:[5,10,20,50,{text:"All",value:-1}],items:[],loading:!0,topActions:[],translatedHeader:[]}},mounted:function(){this.setupData(),this.$root.$on("printPage",this.setItemsPerPageForPrint)},watch:{},methods:{setupData:function(){let t;if(this.translatedHeader=this.columns.map((t=>({text:this.$t(`App.fhir-resources-texts.${t.text}`),value:t.value}))),2===this.searchField.split(":").length){let e=this.searchField.split(":")[0];t="fhir/"+e+"?_id="+this.linkId+"&_include="+this.searchField}else{t="/fhir/"+this.field;let e=[];this.profile&&e.push("_profile="+this.profile);let i="";this.searchFieldTarget&&(i=this.searchFieldTarget+"/"),i+=this.linkId,this.searchField?e.push(this.searchField+"="+i):e.push(this.linkField.substring(this.linkField.indexOf(".")+1)+"="+i),t+="?"+e.join("&")}t+="&_sort=-_id",this.items=[],this.loading=!0,this.addItems(t)},addItems:function(t){fetch(t).then((e=>{200===e.status?e.json().then((async t=>{if(t.entry&&t.entry.length>0)for(let i of t.entry){if(2===this.searchField.split(":").length&&i.resource.resourceType===this.searchField.split(":")[0])continue;let s={id:i.resource.id};for(let t of this.columns)if("_action"!==t.value)try{let e=this.$fhirpath.evaluate(i.resource,t.value);s[t.value]=await this.processContent(e)}catch(e){console.log(e)}s.actions||(s.actions=[]);for(let e of this.actions)if(e.row)if(e.condition){let t=this.$fhirpath.evaluate(i.resource,e.condition);t.every((t=>t))&&s.actions.push(e)}else s.actions.push(e);else if(e.condition){let i=this.$fhirpath.evaluate(t.entry[0].resource,e.condition);e.hasOwnProperty("meets")?e.meets=e.meets&&i.every((t=>t)):e.meets=i.every((t=>t))}else e.meets=!0;if(this.dateFormat){const t=/\d{4}-\d{2}-\d{2}/g;s=JSON.parse(JSON.stringify(s).replace(t,(t=>this.$moment(t).format(this.dateFormat))))}this.items.push(s)}else for(let i of this.actions)i.row||(i.meets=i.emptyDisplay);if(this.topActions=this.actions.filter((t=>!t.row&&t.meets)),t.link){let e=t.link.find((t=>"next"===t.relation));e?this.addItems(e.url):this.loading=!1}else this.loading=!1})).catch((t=>{this.loading=!1,console.log(t)})):(this.loading=!1,console.log("Unable to fetch",t,e.status))})).catch((t=>{this.loading=!1,console.log(t)}))},processContent:async function(t){if(Array.isArray(t)){let e=await Promise.all(t.map(this.processContent));return e.join(" ")}return o(t)?t.code&&t.system?await this.$fhirutils.codeLookup(t.system,t.code):t.display?t.display:t.code?t.code:t.reference?await this.$fhirutils.resourceLookup(t.reference):(console.log("Unable to process content:",t),"Unknown"):t},setupLink(t,e){return t.replace("ITEMID",e.id).replace("FHIRID",this.linkId)},setItemsPerPageForPrint(){this.itemsPerPage=-1}},computed:{computedId(){return this.items.length>0?"":"section-element-to-hide"}}},n=a,l=i(3736),c=i(3453),h=i.n(c),d=i(3150),u=i(4228),p=i(6957),f=i(9762),m=i(6656),v=i(7921),g=(0,l.Z)(n,s,r,!1,null,null,null),y=g.exports;h()(g,{VBtn:d.Z,VContainer:u.Z,VDataTable:p.Z,VSpacer:f.Z,VToolbar:m.Z,VToolbarTitle:v.qW})},6181:function(t,e,i){i.r(e),i.d(e,{default:function(){return p}});var s=function(){var t=this,e=t.$createElement,i=t._self._c||e;return t.edit&&t.secondary?t._e():i("div",{staticClass:"ihris-section mb-3",attrs:{id:"section-"+t.name}},[i("v-card",{staticClass:"mx-auto",attrs:{"max-width":"700",outlined:""}},[i("v-card-title",{staticClass:"primary darken-1 white--text text-uppercase font-weight-bold"},[t._v(t._s(t.$t("App.fhir-resources-texts."+t.title))+" ")]),i("v-card-text",{staticClass:"my-3"},[t._t("default",null,{source:t.slotProps.source},{isEmpty:t.isEmpty})],2)],1)],1)},r=[],o={name:"ihris-section",props:["name","slotProps","title","description","edit","secondary"],data:function(){return{}},created:function(){},watch:{},methods:{isEmpty(){console.log("empty")}}},a=o,n=i(3736),l=i(3453),c=i.n(l),h=i(2371),d=i(7118),u=(0,n.Z)(a,s,r,!1,null,null,null),p=u.exports;c()(u,{VCard:h.Z,VCardText:d.ZB,VCardTitle:d.EB})}}]);
//# sourceMappingURL=fhir-primary.bae27240.js.map