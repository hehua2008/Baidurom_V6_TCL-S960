.class public Lcom/android/jrdsettings/dlna/DLNAPreference;
.super Landroid/preference/Preference;
.source "DLNAPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DLNAPreference"


# instance fields
.field private mChecked:Z

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPreferenceSwitch:Landroid/widget/Switch;

.field private mPreferenceTitle:Landroid/widget/TextView;

.field private mTitleValue:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/jrdsettings/dlna/DLNAPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/jrdsettings/dlna/DLNAPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    iput-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAPreference;->mPreferenceTitle:Landroid/widget/TextView;

    .line 41
    iput-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAPreference;->mPreferenceSwitch:Landroid/widget/Switch;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/dlna/DLNAPreference;->mChecked:Z

    .line 58
    iput-object p1, p0, Lcom/android/jrdsettings/dlna/DLNAPreference;->mContext:Landroid/content/Context;

    .line 60
    invoke-super {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-super {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method public getSwitch()Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAPreference;->mPreferenceSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/jrdsettings/dlna/DLNAPreference;->mChecked:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 91
    const-string v0, "DLNAPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oncheckChanged to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0, p2}, Lcom/android/jrdsettings/dlna/DLNAPreference;->setChecked(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 95
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    .line 68
    const-string v1, "DLNAPreference"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v1, p0, Lcom/android/jrdsettings/dlna/DLNAPreference;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/jrdsettings/dlna/DLNAPreference;->mInflater:Landroid/view/LayoutInflater;

    .line 72
    iget-object v1, p0, Lcom/android/jrdsettings/dlna/DLNAPreference;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040098

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b0160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/jrdsettings/dlna/DLNAPreference;->mPreferenceTitle:Landroid/widget/TextView;

    .line 76
    iget-object v1, p0, Lcom/android/jrdsettings/dlna/DLNAPreference;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/jrdsettings/dlna/DLNAPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const v1, 0x7f0b0169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/jrdsettings/dlna/DLNAPreference;->mPreferenceSwitch:Landroid/widget/Switch;

    .line 79
    iget-object v1, p0, Lcom/android/jrdsettings/dlna/DLNAPreference;->mPreferenceSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 80
    iget-object v1, p0, Lcom/android/jrdsettings/dlna/DLNAPreference;->mPreferenceSwitch:Landroid/widget/Switch;

    iget-boolean v2, p0, Lcom/android/jrdsettings/dlna/DLNAPreference;->mChecked:Z

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 81
    return-object v0
.end method

.method public setChecked(Z)Z
    .locals 5
    .parameter "checked"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    const-string v0, "DLNAPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setChecked to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dlna_mode_on"

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 102
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAPreference;->mPreferenceSwitch:Landroid/widget/Switch;

    if-nez v0, :cond_2

    .line 104
    const-string v0, "DLNAPreference"

    const-string v1, "setChecked return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iput-boolean p1, p0, Lcom/android/jrdsettings/dlna/DLNAPreference;->mChecked:Z

    .line 114
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v0, v2

    .line 100
    goto :goto_0

    .line 109
    :cond_2
    iget-boolean v0, p0, Lcom/android/jrdsettings/dlna/DLNAPreference;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAPreference;->mPreferenceSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 111
    iput-boolean p1, p0, Lcom/android/jrdsettings/dlna/DLNAPreference;->mChecked:Z

    move v2, v1

    .line 112
    goto :goto_1
.end method
