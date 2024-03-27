"use strict";(self["webpackChunkiHRIS_v5"]=self["webpackChunkiHRIS_v5"]||[]).push([[2251],{953:function(t,e,s){s.r(e),s.d(e,{default:function(){return v}});var i=function(){var t=this,e=t.$createElement,s=t._self._c||e;return t.hide?t._e():s("v-container",[s("v-autocomplete",{attrs:{loading:t.loading,label:t.label,items:t.items.filter((function(t){return!t.code.includes("(deactivated)")})),outlined:"","hide-details":"auto","error-messages":t.errors,"item-text":"display","item-value":"code",rules:t.rules,dense:"",clearable:""},on:{change:function(e){t.errors=[]}},scopedSlots:t._u([{key:"label",fn:function(){return[t._v(t._s(t.$t("App.fhir-resources-texts."+t.label))+" "),t.required?s("span",{staticClass:"red--text font-weight-bold"},[t._v("*")]):t._e()]},proxy:!0}],null,!1,3654946902),model:{value:t.valueCode,callback:function(e){t.valueCode=e},expression:"valueCode"}})],1)},a=[],l=s(5939),o=s(1997),r={name:"fhir-coding",props:["id","field","definition","label","path","binding","edit","min","max","constraints","displayCondition","slotProps","initial"],mixins:[o.x],data:function(){return{value:{system:"",code:"",display:""},savedValueCode:"",valueCode:"",loading:!0,errors:[],items:[],source:{path:"",data:{},binding:this.binding},qField:"valueCoding",lockWatch:!1}},created:function(){this.hideShowField(this.displayCondition),this.setupData(),this.initial&&!this.$route.params.id&&(this.value=this.initial)},watch:{slotProps:{handler(){this.lockWatch||this.setupData()},deep:!0},valueCode:function(){this.items&&(this.value=this.items.find((t=>t.code===this.valueCode))),l.Y.$emit(this.path,this.value.system+"#"+this.value.code)}},methods:{setupData:function(){if(this.slotProps&&this.slotProps.source){if(this.source={path:this.slotProps.source.path+"."+this.field,data:{},binding:this.binding||this.slotProps.source.binding},this.slotProps.source.fromArray)this.source.data=this.slotProps.source.data,this.savedValueCode=this.source.data,this.lockWatch=!0;else{let t=this.$fhirutils.pathFieldExpression(this.field);this.source.data=this.$fhirpath.evaluate(this.slotProps.source.data,t);let e=null;if(1==this.source.data.length)e=this.source.data[0];else{let t,s=this.path.split("[");for(let e of s){let s=e.split("]");Number.isInteger(parseInt(s[0]))&&(t=s[0])}(t||0==t)&&(e=this.source.data[t])}null!=e&&("object"===typeof e?(this.value=e,this.savedValueCode=this.value.code):this.savedValueCode=e,this.lockWatch=!0)}this.disabled=this.readOnlyIfSet&&!!this.value}let t=this.binding||this.slotProps.source.binding;this.$fhirutils.expand(t).then((t=>{this.items=t;let e=this.items.find((t=>this.savedValueCode&&t.code===this.savedValueCode));e&&(this.value=e),this.value&&(this.valueCode=this.value.code),this.loading=!1})).catch((t=>{console.log(t),this.errors.push(t.message),this.loading=!1}))}},computed:{required:function(){return this.min>0},rules:function(){return this.required?[t=>!!t||this.label+" is required"]:[]}}},n=r,u=s(3736),h=s(3453),d=s.n(h),c=s(1835),p=s(4228),f=(0,u.Z)(n,i,a,!1,null,null,null),v=f.exports;d()(f,{VAutocomplete:c.Z,VContainer:p.Z})},7218:function(t,e,s){s.r(e),s.d(e,{default:function(){return v}});var i=function(){var t=this,e=t.$createElement,s=t._self._c||e;return t.hide?t._e():s("ihris-element",{attrs:{edit:t.edit,loading:!1},scopedSlots:t._u([{key:"form",fn:function(){return[s("v-textarea",{attrs:{"error-messages":t.errors,disabled:t.disabled,label:t.display,outlined:"","hide-details":"auto",rules:t.rules,dense:""},on:{change:function(e){t.errors=[]}},scopedSlots:t._u([{key:"label",fn:function(){return[t._v(t._s(t.$t("App.fhir-resources-texts."+t.display))+" "),t.required?s("span",{staticClass:"red--text font-weight-bold"},[t._v("*")]):t._e()]},proxy:!0}],null,!1,3110236810),model:{value:t.value,callback:function(e){t.value=e},expression:"value"}})]},proxy:!0},{key:"header",fn:function(){return[t._v(" "+t._s(t.$t("App.fhir-resources-texts."+t.display))+" ")]},proxy:!0},{key:"value",fn:function(){return[t._v(" "+t._s(t.value)+" ")]},proxy:!0}],null,!1,865592460)})},a=[],l=s(2130),o=s(5939),r=s(1997),n={name:"fhir-text",props:["field","label","min","max","path","edit","sliceName","slotProps","base-min","base-max","readOnlyIfSet","constraints","displayCondition"],components:{IhrisElement:l.Z},mixins:[r.x],data:function(){return{source:{path:"",data:{}},value:"",qField:"valueText",disabled:!1,errors:[],lockWatch:!1}},created:function(){this.hideShowField(this.displayCondition),this.setupData()},watch:{slotProps:{handler(){this.lockWatch||this.setupData()},deep:!0},value(t){o.Y.$emit(this.path,t)}},methods:{setupData(){if(this.slotProps&&this.slotProps.source){if(this.source={path:this.slotProps.source.path+"."+this.field,data:{}},this.slotProps.source.fromArray)this.source.data=this.slotProps.source.data,this.value=this.source.data,this.lockWatch=!0;else{let t=this.$fhirutils.pathFieldExpression(this.field);this.source.data=this.$fhirpath.evaluate(this.slotProps.source.data,t);let e=null;if(1==this.source.data.length)e=this.source.data[0];else{let t,s=this.path.split("[");for(let e of s){let s=e.split("]");Number.isInteger(parseInt(s[0]))&&(t=s[0])}(t||0==t)&&(e=this.source.data[t])}null!=e&&(this.value=e,this.lockWatch=!0)}this.disabled=this.readOnlyIfSet&&!!this.value}}},computed:{index:function(){return this.slotProps?this.slotProps.input.index:void 0},display:function(){return this.slotProps&&this.slotProps.input?this.slotProps.input.label:this.label},required:function(){return(this.index||0)<this.min},rules:function(){return this.required?[t=>!!t||this.display+" is required"]:[]}}},u=n,h=s(3736),d=s(3453),c=s.n(d),p=s(4350),f=(0,h.Z)(u,i,a,!1,null,null,null),v=f.exports;c()(f,{VTextarea:p.Z})}}]);
//# sourceMappingURL=fhir-main.bae3161f.js.map