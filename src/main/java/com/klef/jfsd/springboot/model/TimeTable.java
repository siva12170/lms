package com.klef.jfsd.springboot.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class TimeTable {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
	private boolean slot11;
	private boolean slot12;
	private boolean slot13;
	private boolean slot14;
	private boolean slot15;
	private boolean slot16;
	
	
	private boolean slot21;
	private boolean slot22;
	private boolean slot23;
	private boolean slot24;
	private boolean slot25;
	private boolean slot26;
	
	private boolean slot31;
	private boolean slot32;
	private boolean slot33;
	private boolean slot34;
	private boolean slot35;
	private boolean slot36;
	
	
	private boolean slot41;
	private boolean slot42;
	private boolean slot43;
	private boolean slot44;
	private boolean slot45;
	private boolean slot46;
	
	private boolean slot51;
	private boolean slot52;
	private boolean slot53;
	private boolean slot54;
	private boolean slot55;
	private boolean slot56;
	
	private boolean slot61;
	private boolean slot62;
	private boolean slot63;
	private boolean slot64;
	private boolean slot65;
	private boolean slot66;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public boolean isSlot11() {
		return slot11;
	}
	public void setSlot11(boolean slot11) {
		this.slot11 = slot11;
	}
	public boolean isSlot12() {
		return slot12;
	}
	public void setSlot12(boolean slot12) {
		this.slot12 = slot12;
	}
	public boolean isSlot13() {
		return slot13;
	}
	public void setSlot13(boolean slot13) {
		this.slot13 = slot13;
	}
	public boolean isSlot14() {
		return slot14;
	}
	public void setSlot14(boolean slot14) {
		this.slot14 = slot14;
	}
	public boolean isSlot15() {
		return slot15;
	}
	public void setSlot15(boolean slot15) {
		this.slot15 = slot15;
	}
	public boolean isSlot16() {
		return slot16;
	}
	public void setSlot16(boolean slot16) {
		this.slot16 = slot16;
	}
	public boolean isSlot21() {
		return slot21;
	}
	public void setSlot21(boolean slot21) {
		this.slot21 = slot21;
	}
	public boolean isSlot22() {
		return slot22;
	}
	public void setSlot22(boolean slot22) {
		this.slot22 = slot22;
	}
	public boolean isSlot23() {
		return slot23;
	}
	public void setSlot23(boolean slot23) {
		this.slot23 = slot23;
	}
	public boolean isSlot24() {
		return slot24;
	}
	public void setSlot24(boolean slot24) {
		this.slot24 = slot24;
	}
	public boolean isSlot25() {
		return slot25;
	}
	public void setSlot25(boolean slot25) {
		this.slot25 = slot25;
	}
	public boolean isSlot26() {
		return slot26;
	}
	public void setSlot26(boolean slot26) {
		this.slot26 = slot26;
	}
	public boolean isSlot31() {
		return slot31;
	}
	public void setSlot31(boolean slot31) {
		this.slot31 = slot31;
	}
	public boolean isSlot32() {
		return slot32;
	}
	public void setSlot32(boolean slot32) {
		this.slot32 = slot32;
	}
	public boolean isSlot33() {
		return slot33;
	}
	public void setSlot33(boolean slot33) {
		this.slot33 = slot33;
	}
	public boolean isSlot34() {
		return slot34;
	}
	public void setSlot34(boolean slot34) {
		this.slot34 = slot34;
	}
	public boolean isSlot35() {
		return slot35;
	}
	public void setSlot35(boolean slot35) {
		this.slot35 = slot35;
	}
	public boolean isSlot36() {
		return slot36;
	}
	public void setSlot36(boolean slot36) {
		this.slot36 = slot36;
	}
	public boolean isSlot41() {
		return slot41;
	}
	public void setSlot41(boolean slot41) {
		this.slot41 = slot41;
	}
	public boolean isSlot42() {
		return slot42;
	}
	public void setSlot42(boolean slot42) {
		this.slot42 = slot42;
	}
	public boolean isSlot43() {
		return slot43;
	}
	public void setSlot43(boolean slot43) {
		this.slot43 = slot43;
	}
	public boolean isSlot44() {
		return slot44;
	}
	public void setSlot44(boolean slot44) {
		this.slot44 = slot44;
	}
	public boolean isSlot45() {
		return slot45;
	}
	public void setSlot45(boolean slot45) {
		this.slot45 = slot45;
	}
	public boolean isSlot46() {
		return slot46;
	}
	public void setSlot46(boolean slot46) {
		this.slot46 = slot46;
	}
	public boolean isSlot51() {
		return slot51;
	}
	public void setSlot51(boolean slot51) {
		this.slot51 = slot51;
	}
	public boolean isSlot52() {
		return slot52;
	}
	public void setSlot52(boolean slot52) {
		this.slot52 = slot52;
	}
	public boolean isSlot53() {
		return slot53;
	}
	public void setSlot53(boolean slot53) {
		this.slot53 = slot53;
	}
	public boolean isSlot54() {
		return slot54;
	}
	public void setSlot54(boolean slot54) {
		this.slot54 = slot54;
	}
	public boolean isSlot55() {
		return slot55;
	}
	public void setSlot55(boolean slot55) {
		this.slot55 = slot55;
	}
	public boolean isSlot56() {
		return slot56;
	}
	public void setSlot56(boolean slot56) {
		this.slot56 = slot56;
	}
	public boolean isSlot61() {
		return slot61;
	}
	public void setSlot61(boolean slot61) {
		this.slot61 = slot61;
	}
	public boolean isSlot62() {
		return slot62;
	}
	public void setSlot62(boolean slot62) {
		this.slot62 = slot62;
	}
	public boolean isSlot63() {
		return slot63;
	}
	public void setSlot63(boolean slot63) {
		this.slot63 = slot63;
	}
	public boolean isSlot64() {
		return slot64;
	}
	public void setSlot64(boolean slot64) {
		this.slot64 = slot64;
	}
	public boolean isSlot65() {
		return slot65;
	}
	public void setSlot65(boolean slot65) {
		this.slot65 = slot65;
	}
	public boolean isSlot66() {
		return slot66;
	}
	public void setSlot66(boolean slot66) {
		this.slot66 = slot66;
	}
	@Override
	public String toString() {
		return "TimeTable [id=" + id + ", slot11=" + slot11 + ", slot12=" + slot12 + ", slot13=" + slot13 + ", slot14="
				+ slot14 + ", slot15=" + slot15 + ", slot16=" + slot16 + ", slot21=" + slot21 + ", slot22=" + slot22
				+ ", slot23=" + slot23 + ", slot24=" + slot24 + ", slot25=" + slot25 + ", slot26=" + slot26
				+ ", slot31=" + slot31 + ", slot32=" + slot32 + ", slot33=" + slot33 + ", slot34=" + slot34
				+ ", slot35=" + slot35 + ", slot36=" + slot36 + ", slot41=" + slot41 + ", slot42=" + slot42
				+ ", slot43=" + slot43 + ", slot44=" + slot44 + ", slot45=" + slot45 + ", slot46=" + slot46
				+ ", slot51=" + slot51 + ", slot52=" + slot52 + ", slot53=" + slot53 + ", slot54=" + slot54
				+ ", slot55=" + slot55 + ", slot56=" + slot56 + ", slot61=" + slot61 + ", slot62=" + slot62
				+ ", slot63=" + slot63 + ", slot64=" + slot64 + ", slot65=" + slot65 + ", slot66=" + slot66 + "]";
	}
	
	
	
}
