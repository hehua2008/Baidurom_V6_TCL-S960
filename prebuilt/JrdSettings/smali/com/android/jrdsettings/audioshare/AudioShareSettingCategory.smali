.class public Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;
.super Landroid/preference/PreferenceCategory;
.source "AudioShareSettingCategory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioShareSettingPreference"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLocalMute:Z

.field private mSettingClickedListener:Lcom/android/jrdsettings/audioshare/ISettingClickedCallBack;

.field private mSettingGroup:Landroid/widget/RadioGroup;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;->mContext:Landroid/content/Context;

    .line 46
    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;->mSettingGroup:Landroid/widget/RadioGroup;

    .line 47
    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;->mTitle:Landroid/widget/TextView;

    .line 48
    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;->mSettingClickedListener:Lcom/android/jrdsettings/audioshare/ISettingClickedCallBack;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;->mLocalMute:Z

    .line 54
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;->mContext:Landroid/content/Context;

    .line 55
    const v0, 0x7f040011

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;)Lcom/android/jrdsettings/audioshare/ISettingClickedCallBack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;->mSettingClickedListener:Lcom/android/jrdsettings/audioshare/ISettingClickedCallBack;

    return-object v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 60
    const v0, 0x7f0b0019

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;->mSettingGroup:Landroid/widget/RadioGroup;

    .line 62
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;->mSettingGroup:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;->mSettingGroup:Landroid/widget/RadioGroup;

    iget-boolean v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;->mLocalMute:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0b001a

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 68
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;->mSettingGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory$1;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory$1;-><init>(Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 85
    :cond_0
    const v0, 0x7f0b0012

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;->mTitle:Landroid/widget/TextView;

    .line 86
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 87
    return-void

    .line 64
    :cond_1
    const v0, 0x7f0b001b

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 3
    .parameter "isChecked"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;->mLocalMute:Z

    .line 105
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;->mSettingGroup:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "kkk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;->mSettingGroup:Landroid/widget/RadioGroup;

    if-eqz p1, :cond_1

    const v0, 0x7f0b001a

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 111
    :cond_0
    return-void

    .line 107
    :cond_1
    const v0, 0x7f0b001b

    goto :goto_0
.end method

.method public setSettingClickedListener(Lcom/android/jrdsettings/audioshare/ISettingClickedCallBack;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;->mSettingClickedListener:Lcom/android/jrdsettings/audioshare/ISettingClickedCallBack;

    .line 100
    return-void
.end method
