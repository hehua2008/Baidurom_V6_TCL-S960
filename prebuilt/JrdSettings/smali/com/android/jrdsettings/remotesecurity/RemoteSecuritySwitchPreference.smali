.class public Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;
.super Landroid/preference/Preference;
.source "RemoteSecuritySwitchPreference.java"


# instance fields
.field private mChecked:Z

.field private mSwitchChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;->mChecked:Z

    .line 29
    const v0, 0x7f0400b8

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;->mChecked:Z

    .line 24
    const v0, 0x7f0400b8

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 25
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;->mChecked:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 35
    const v1, 0x7f0b0066

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 36
    .local v0, switch_:Landroid/widget/Switch;
    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;->mSwitchChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 37
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 38
    iget-boolean v1, p0, Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 39
    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;->mSwitchChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 41
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;->mChecked:Z

    .line 45
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 46
    return-void
.end method

.method public setmSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .parameter "mSwitchChangeListener"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;->mSwitchChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 20
    return-void
.end method
