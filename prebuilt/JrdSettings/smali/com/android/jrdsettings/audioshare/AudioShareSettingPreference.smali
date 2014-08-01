.class public Lcom/android/jrdsettings/audioshare/AudioShareSettingPreference;
.super Landroid/preference/Preference;
.source "AudioShareSettingPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioShareSettingPreference"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettingPreference;->mContext:Landroid/content/Context;

    .line 23
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettingPreference;->mContext:Landroid/content/Context;

    .line 25
    const v0, 0x7f040016

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettingPreference;->mContext:Landroid/content/Context;

    .line 30
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettingPreference;->mContext:Landroid/content/Context;

    .line 31
    const v0, 0x7f040016

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/audioshare/AudioShareSettingPreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettingPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 43
    const v1, 0x7f0b0019

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 45
    .local v0, group:Landroid/widget/RadioGroup;
    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v1, Lcom/android/jrdsettings/audioshare/AudioShareSettingPreference$1;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/audioshare/AudioShareSettingPreference$1;-><init>(Lcom/android/jrdsettings/audioshare/AudioShareSettingPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 62
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 69
    return-void
.end method
