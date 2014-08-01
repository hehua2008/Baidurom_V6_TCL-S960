.class public Lcom/android/jrdsettings/audioshare/AudioShareIntroductionCategory;
.super Landroid/preference/PreferenceCategory;
.source "AudioShareIntroductionCategory.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/AudioShareIntroductionCategory;->mContext:Landroid/content/Context;

    .line 18
    const v0, 0x7f040010

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 19
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 24
    return-void
.end method
