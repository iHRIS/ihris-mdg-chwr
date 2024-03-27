"use strict";(self["webpackChunkiHRIS_v5"]=self["webpackChunkiHRIS_v5"]||[]).push([[737],{3446:function(e,t,s){s.d(t,{Z:function(){return l}});var i=s(5648),r=s(6257),p=s(1431),n=s(3325),o=s(1824);const a=(0,n.Z)(i.Z,(0,r.J)("stepper"),p.Z);var l=a.extend({name:"v-stepper",provide(){return{stepClick:this.stepClick,isVertical:this.vertical}},props:{altLabels:Boolean,nonLinear:Boolean,flat:Boolean,vertical:Boolean},data(){const e={isBooted:!1,steps:[],content:[],isReverse:!1};return e.internalLazyValue=null!=this.value?this.value:(e[0]||{}).step||1,e},computed:{classes(){return{"v-stepper--flat":this.flat,"v-stepper--is-booted":this.isBooted,"v-stepper--vertical":this.vertical,"v-stepper--alt-labels":this.altLabels,"v-stepper--non-linear":this.nonLinear,...i.Z.options.computed.classes.call(this)}},styles(){return{...i.Z.options.computed.styles.call(this)}}},watch:{internalValue(e,t){this.isReverse=Number(e)<Number(t),t&&(this.isBooted=!0),this.updateView()}},created(){this.$listeners.input&&(0,o.fK)("@input","@change",this)},mounted(){this.updateView()},methods:{register(e){"v-stepper-step"===e.$options.name?this.steps.push(e):"v-stepper-content"===e.$options.name&&(e.isVertical=this.vertical,this.content.push(e))},unregister(e){"v-stepper-step"===e.$options.name?this.steps=this.steps.filter((t=>t!==e)):"v-stepper-content"===e.$options.name&&(e.isVertical=this.vertical,this.content=this.content.filter((t=>t!==e)))},stepClick(e){this.$nextTick((()=>this.internalValue=e))},updateView(){for(let e=this.steps.length;--e>=0;)this.steps[e].toggle(this.internalValue);for(let e=this.content.length;--e>=0;)this.content[e].toggle(this.internalValue,this.isReverse)}},render(e){return e(this.tag,{staticClass:"v-stepper",class:this.classes,style:this.styles},this.$slots.default)}})},8975:function(e,t,s){var i=s(172),r=s(6952),p=s(6257),n=s(6286),o=s(3325),a=s(4589);const l=(0,o.Z)(r.Z,(0,p.f)("stepper","v-stepper-step","v-stepper"));t["Z"]=l.extend().extend({name:"v-stepper-step",directives:{ripple:n.Z},inject:["stepClick"],props:{color:{type:String,default:"primary"},complete:Boolean,completeIcon:{type:String,default:"$complete"},editable:Boolean,editIcon:{type:String,default:"$edit"},errorIcon:{type:String,default:"$error"},rules:{type:Array,default:()=>[]},step:[Number,String]},data(){return{isActive:!1,isInactive:!0}},computed:{classes(){return{"v-stepper__step--active":this.isActive,"v-stepper__step--editable":this.editable,"v-stepper__step--inactive":this.isInactive,"v-stepper__step--error error--text":this.hasError,"v-stepper__step--complete":this.complete}},hasError(){return this.rules.some((e=>!0!==e()))}},mounted(){this.stepper&&this.stepper.register(this)},beforeDestroy(){this.stepper&&this.stepper.unregister(this)},methods:{click(e){e.stopPropagation(),this.$emit("click",e),this.editable&&this.stepClick(this.step)},genIcon(e){return this.$createElement(i.Z,e)},genLabel(){return this.$createElement("div",{staticClass:"v-stepper__label"},this.$slots.default)},genStep(){const e=!(this.hasError||!this.complete&&!this.isActive)&&this.color;return this.$createElement("span",this.setBackgroundColor(e,{staticClass:"v-stepper__step__step"}),this.genStepContent())},genStepContent(){const e=[];return this.hasError?e.push(this.genIcon(this.errorIcon)):this.complete?this.editable?e.push(this.genIcon(this.editIcon)):e.push(this.genIcon(this.completeIcon)):e.push(String(this.step)),e},keyboardClick(e){e.keyCode===a.Do.space&&this.click(e)},toggle(e){this.isActive=e.toString()===this.step.toString(),this.isInactive=Number(e)<Number(this.step)}},render(e){return e("div",{attrs:{tabindex:this.editable?0:-1},staticClass:"v-stepper__step",class:this.classes,directives:[{name:"ripple",value:this.editable}],on:{click:this.click,keydown:this.keyboardClick}},[this.genStep(),this.genLabel()])}})},737:function(e,t,s){s.r(t),s.d(t,{default:function(){return d}});var i=function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("v-stepper",{attrs:{"non-linear":"",value:e.step,vertical:""}},[s("h3",[e._v("Request Status")]),s("v-stepper-step",{attrs:{color:1==e.step?"red":"primary",step:"1",complete:e.step>1}},[e._v(" Waiting Immediate Supervisor Action ")]),s("v-divider"),s("v-stepper-step",{attrs:{color:e.noSupervisorSupervisorAppr?"red":"primary",step:"2",complete:!e.noSupervisorSupervisorAppr}},[e._v(" Waiting Supervisor's Supervisor Action ")]),s("v-divider"),s("v-stepper-step",{attrs:{color:e.noHRApproval?"red":"primary",step:"3",complete:!e.noHRApproval}},[e._v(" Waiting HR Action ")]),s("v-divider"),s("v-stepper-step",{attrs:{color:4==e.step?"primary":"red",step:"4",complete:e.step>3}},[e._v(" Leave Approved ")])],1)},r=[],p={props:["step","noSupervisorAppr","noSupervisorSupervisorAppr","noHRApproval"]},n=p,o=s(3736),a=s(3453),l=s.n(a),c=s(1418),h=s(3446),v=s(8975),u=(0,o.Z)(n,i,r,!1,null,null,null),d=u.exports;l()(u,{VDivider:c.Z,VStepper:h.Z,VStepperStep:v.Z})}}]);
//# sourceMappingURL=737.c1b1fad1.js.map