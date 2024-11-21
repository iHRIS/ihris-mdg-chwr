"use strict";(self["webpackChunkiHRIS_v5"]=self["webpackChunkiHRIS_v5"]||[]).push([[5374],{71835:function(t,e,s){s.d(e,{Z:function(){return o}});s(26699);var i=s(43986),n=s(55978),a=s(76290),r=s(4589);const l={...i.l,offsetY:!0,offsetOverflow:!0,transition:!1};var o=i.Z.extend({name:"v-autocomplete",props:{allowOverflow:{type:Boolean,default:!0},autoSelectFirst:{type:Boolean,default:!1},filter:{type:Function,default:(t,e,s)=>s.toLocaleLowerCase().indexOf(e.toLocaleLowerCase())>-1},hideNoData:Boolean,menuProps:{type:i.Z.options.props.menuProps.type,default:()=>l},noFilter:Boolean,searchInput:{type:String}},data(){return{lazySearch:this.searchInput}},computed:{classes(){return{...i.Z.options.computed.classes.call(this),"v-autocomplete":!0,"v-autocomplete--is-selecting-index":this.selectedIndex>-1}},computedItems(){return this.filteredItems},selectedValues(){return this.selectedItems.map((t=>this.getValue(t)))},hasDisplayedItems(){return this.hideSelected?this.filteredItems.some((t=>!this.hasItem(t))):this.filteredItems.length>0},currentRange(){return null==this.selectedItem?0:String(this.getText(this.selectedItem)).length},filteredItems(){return!this.isSearching||this.noFilter||null==this.internalSearch?this.allItems:this.allItems.filter((t=>{const e=(0,r.qF)(t,this.itemText),s=null!=e?String(e):"";return this.filter(t,String(this.internalSearch),s)}))},internalSearch:{get(){return this.lazySearch},set(t){this.lazySearch!==t&&(this.lazySearch=t,this.$emit("update:search-input",t))}},isAnyValueAllowed(){return!1},isDirty(){return this.searchIsDirty||this.selectedItems.length>0},isSearching(){return this.multiple&&this.searchIsDirty||this.searchIsDirty&&this.internalSearch!==this.getText(this.selectedItem)},menuCanShow(){return!!this.isFocused&&(this.hasDisplayedItems||!this.hideNoData)},$_menuProps(){const t=i.Z.options.computed.$_menuProps.call(this);return t.contentClass=`v-autocomplete__content ${t.contentClass||""}`.trim(),{...l,...t}},searchIsDirty(){return null!=this.internalSearch&&""!==this.internalSearch},selectedItem(){return this.multiple?null:this.selectedItems.find((t=>this.valueComparator(this.getValue(t),this.getValue(this.internalValue))))},listData(){const t=i.Z.options.computed.listData.call(this);return t.props={...t.props,items:this.virtualizedItems,noFilter:this.noFilter||!this.isSearching||!this.filteredItems.length,searchInput:this.internalSearch},t}},watch:{filteredItems:"onFilteredItemsChanged",internalValue:"setSearch",isFocused(t){t?(document.addEventListener("copy",this.onCopy),this.$refs.input&&this.$refs.input.select()):(document.removeEventListener("copy",this.onCopy),this.blur(),this.updateSelf())},isMenuActive(t){!t&&this.hasSlot&&(this.lazySearch=null)},items(t,e){e&&e.length||!this.hideNoData||!this.isFocused||this.isMenuActive||!t.length||this.activateMenu()},searchInput(t){this.lazySearch=t},internalSearch:"onInternalSearchChanged",itemText:"updateSelf"},created(){this.setSearch()},destroyed(){document.removeEventListener("copy",this.onCopy)},methods:{onFilteredItemsChanged(t,e){if(t!==e){if(!this.autoSelectFirst){const s=e[this.$refs.menu.listIndex];s?this.setMenuIndex(t.findIndex((t=>t===s))):this.setMenuIndex(-1),this.$emit("update:list-index",this.$refs.menu.listIndex)}this.$nextTick((()=>{this.internalSearch&&(1===t.length||this.autoSelectFirst)&&(this.$refs.menu.getTiles(),this.autoSelectFirst&&t.length&&(this.setMenuIndex(0),this.$emit("update:list-index",this.$refs.menu.listIndex)))}))}},onInternalSearchChanged(){this.updateMenuDimensions()},updateMenuDimensions(){this.isMenuActive&&this.$refs.menu&&this.$refs.menu.updateDimensions()},changeSelectedIndex(t){this.searchIsDirty||(this.multiple&&t===r.Do.left?-1===this.selectedIndex?this.selectedIndex=this.selectedItems.length-1:this.selectedIndex--:this.multiple&&t===r.Do.right?this.selectedIndex>=this.selectedItems.length-1?this.selectedIndex=-1:this.selectedIndex++:t!==r.Do.backspace&&t!==r.Do["delete"]||this.deleteCurrentItem())},deleteCurrentItem(){const t=this.selectedIndex,e=this.selectedItems[t];if(!this.isInteractive||this.getDisabled(e))return;const s=this.selectedItems.length-1;if(-1===this.selectedIndex&&0!==s)return void(this.selectedIndex=s);const i=this.selectedItems.length,n=t!==i-1?t:t-1,a=this.selectedItems[n];a?this.selectItem(e):this.setValue(this.multiple?[]:null),this.selectedIndex=n},clearableCallback(){this.internalSearch=null,i.Z.options.methods.clearableCallback.call(this)},genInput(){const t=n.Z.options.methods.genInput.call(this);return t.data=(0,a.ZP)(t.data,{attrs:{"aria-activedescendant":(0,r.vO)(this.$refs.menu,"activeTile.id"),autocomplete:(0,r.vO)(t.data,"attrs.autocomplete","off")},domProps:{value:this.internalSearch}}),t},genInputSlot(){const t=i.Z.options.methods.genInputSlot.call(this);return t.data.attrs.role="combobox",t},genSelections(){return this.hasSlot||this.multiple?i.Z.options.methods.genSelections.call(this):[]},onClick(t){this.isInteractive&&(this.selectedIndex>-1?this.selectedIndex=-1:this.onFocus(),this.isAppendInner(t.target)||this.activateMenu())},onInput(t){if(this.selectedIndex>-1||!t.target)return;const e=t.target,s=e.value;e.value&&this.activateMenu(),this.multiple||""!==s||this.deleteCurrentItem(),this.internalSearch=s,this.badInput=e.validity&&e.validity.badInput},onKeyDown(t){const e=t.keyCode;!t.ctrlKey&&[r.Do.home,r.Do.end].includes(e)||i.Z.options.methods.onKeyDown.call(this,t),this.changeSelectedIndex(e)},onSpaceDown(t){},onTabDown(t){i.Z.options.methods.onTabDown.call(this,t),this.updateSelf()},onUpDown(t){t.preventDefault(),this.activateMenu()},selectItem(t){i.Z.options.methods.selectItem.call(this,t),this.setSearch()},setSelectedItems(){i.Z.options.methods.setSelectedItems.call(this),this.isFocused||this.setSearch()},setSearch(){this.$nextTick((()=>{this.multiple&&this.internalSearch&&this.isMenuActive||(this.internalSearch=!this.selectedItems.length||this.multiple||this.hasSlot?null:this.getText(this.selectedItem))}))},updateSelf(){(this.searchIsDirty||this.internalValue)&&(this.multiple||this.valueComparator(this.internalSearch,this.getValue(this.internalValue))||this.setSearch())},hasItem(t){return this.selectedValues.indexOf(this.getValue(t))>-1},onCopy(t){var e,s;if(-1===this.selectedIndex)return;const i=this.selectedItems[this.selectedIndex],n=this.getText(i);null==(e=t.clipboardData)||e.setData("text/plain",n),null==(s=t.clipboardData)||s.setData("text/vnd.vuetify.autocomplete.item+plain",n),t.preventDefault()}}})},55533:function(t,e,s){s.d(e,{Z:function(){return a}});var i=s(48085),n=s(73325),a=(0,n.Z)(i.Z).extend({name:"v-subheader",props:{inset:Boolean},render(t){return t("div",{staticClass:"v-subheader",class:{"v-subheader--inset":this.inset,...this.themeClasses},attrs:this.$attrs,on:this.$listeners},this.$slots.default)}})},22239:function(t,e,s){s.r(e),s.d(e,{default:function(){return w}});var i=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("v-container",{attrs:{"grid-list-xs":""}},[s("v-overlay",{attrs:{value:t.overlay}},[s("v-progress-circular",{attrs:{color:"primary",indeterminate:"",size:"50"}}),s("v-btn",{attrs:{icon:""},on:{click:function(e){t.overlay=!1}}},[s("v-icon",[t._v("mdi-close")])],1)],1),s("v-navigation-drawer",{staticClass:"primary darken-1 white--text",staticStyle:{"z-index":"3"},attrs:{app:"",clipped:"",permanent:"",right:""}},[s("v-list",{staticClass:"white--text"},[s("v-list-item",[s("v-btn",{staticClass:"secondary",attrs:{dark:""},on:{click:function(e){return t.$router.push("/resource/view/bwpractitioner/"+t.queries.practitioner)}}},[s("v-icon",{attrs:{light:"",left:""}},[t._v("mdi-close-circle-outline")]),s("span",[t._v(t._s(t.$t("App.hardcoded-texts.Cancel")))])],1)],1),s("v-list-item",[s("v-btn",{staticClass:"success darken-1",attrs:{disabled:!t.decision,dark:""},on:{click:function(e){return t.process()}}},[s("v-icon",{attrs:{light:"",left:""}},[t._v("mdi-content-save")]),s("span",[t._v(t._s(t.$t("App.hardcoded-texts.Save")))])],1)],1),s("v-divider",{attrs:{color:"white"}})],1)],1),s("v-card",{staticClass:"mx-auto",attrs:{"max-width":"700",outlined:""}},[s("v-card-title",{staticClass:"primary darken-1 white--text text-uppercase font-weight-bold"},[t._v(" Exam Exemption Request ")]),s("v-card-text",{staticClass:"my-3"},[s("v-row",{staticClass:"justify-space-between"},[s("v-col",{attrs:{cols:"4"}},[s("span",{staticClass:"font-weight-bold"},[t._v("Current Status:")])]),s("v-col",{attrs:{cols:"8"}},[t._v(t._s(t.currentStatus))])],1),s("v-divider"),s("v-row",{staticClass:"justify-space-between"},[s("v-col",{attrs:{cols:"4"}},[s("span",{staticClass:"font-weight-bold"},[t._v("Request Date:")])]),s("v-col",{attrs:{cols:"8"}},[t._v(t._s(t.date))])],1),s("v-divider"),s("v-row",{staticClass:"justify-space-between"},[s("v-col",{attrs:{cols:"4"}},[s("span",{staticClass:"font-weight-bold"},[t._v("Request Comments:")])]),s("v-col",{attrs:{cols:"8"}},[t._v(t._s(t.comment))])],1),s("v-divider"),s("v-row",{staticClass:"justify-space-between"},[s("v-col",{attrs:{cols:"4"}},[s("span",{staticClass:"font-weight-bold"},[t._v("Decision (Approve/Reject):")])]),s("v-col",{attrs:{cols:"8"}},[s("v-autocomplete",{attrs:{label:"Decision",items:t.decisions,outlined:"","hide-details":"auto","item-text":"display","item-value":"code",dense:""},model:{value:t.decision,callback:function(e){t.decision=e},expression:"decision"}})],1)],1),s("v-divider")],1)],1)],1)},n=[],a={props:["queries"],data(){return{overlay:!1,currentStatus:"",date:"",comment:"",decisions:[{display:"Approve",code:"approve"},{display:"Reject",code:"reject"}],decision:""}},methods:{getExemption(){fetch("/fhir/Basic/"+this.queries.exemption).then((t=>{t.json().then((async t=>{let e=t.extension.find((t=>"http://ihris.org/fhir/StructureDefinition/bhpc-exemption-status"===t.url)).valueCoding;this.currentStatus=e.display,this.currentStatus||(this.currentStatus=await this.$fhirutils.codeLookup(e.system,e.code)),this.date=t.extension.find((t=>"http://ihris.org/fhir/StructureDefinition/bhpc-exemption-date"===t.url)).valueDate,this.comment=t.extension.find((t=>"http://ihris.org/fhir/StructureDefinition/bhpc-exemption-comment"===t.url))?.valueString}))}))},process(){this.overlay=!0,fetch("/fhir/Basic/"+this.queries.exemption).then((t=>{t.json().then((async t=>{let e=t.extension.findIndex((t=>"http://ihris.org/fhir/StructureDefinition/bhpc-exemption-status"===t.url)),s={url:"http://ihris.org/fhir/StructureDefinition/bhpc-exemption-status",valueCoding:{system:"http://ihris.org/fhir/CodeSystem",code:"pending"}};"reject"===this.decision?s.valueCoding.code="rejected":"approve"===this.decision&&(s.valueCoding.code="active"),t.extension[e]=s;let i={method:"PUT",headers:{"Content-Type":"application/fhir+json"},redirect:"manual",body:JSON.stringify(t)};fetch("/fhir/Basic/"+t.id,i).then((t=>{this.overlay=!1,200===t.status?(this.$store.commit("setMessage",{type:"success",text:"Decision Saved"}),this.$router.push("/resource/view/bwpractitioner/"+this.queries.practitioner)):this.$store.commit("setMessage",{type:"error",text:"Failed to save decision."})})).catch((()=>{this.overlay=!1,this.$store.commit("setMessage",{type:"error",text:"Failed to save decision."})}))}))}))}},created(){this.getExemption()}},r=a,l=s(43736),o=s(43453),c=s.n(o),h=s(71835),d=s(63150),u=s(32371),p=s(37118),m=s(82102),v=s(4228),f=s(11418),I=s(96428),g=s(16816),x=s(97620),S=s(65132),y=s(51058),C=s(90624),D=s(62877),b=(0,l.Z)(r,i,n,!1,null,null,null),w=b.exports;c()(b,{VAutocomplete:h.Z,VBtn:d.Z,VCard:u.Z,VCardText:p.ZB,VCardTitle:p.EB,VCol:m.Z,VContainer:v.Z,VDivider:f.Z,VIcon:I.Z,VList:g.Z,VListItem:x.Z,VNavigationDrawer:S.Z,VOverlay:y.Z,VProgressCircular:C.Z,VRow:D.Z})}}]);
//# sourceMappingURL=5374.c3d37512.js.map