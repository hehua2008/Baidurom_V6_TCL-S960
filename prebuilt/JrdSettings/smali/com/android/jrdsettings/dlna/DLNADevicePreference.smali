.class public final Lcom/android/jrdsettings/dlna/DLNADevicePreference;
.super Landroid/preference/Preference;
.source "DLNADevicePreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DLNADevicePreference"


# instance fields
.field private mCachedDevice:Ljrdcom/dlnaservice/DeviceInfo;

.field private mConnectDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mDisconnectDialog:Landroid/app/AlertDialog;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPreferenceTitle:Landroid/widget/TextView;

.field private mRetryConnectDialog:Landroid/app/AlertDialog;

.field private mTitleValue:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljrdcom/dlnaservice/DeviceInfo;Ljrdcom/dlnaservice/DLNAManager;)V
    .locals 1
    .parameter "context"
    .parameter "cachedDevice"
    .parameter "manager"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/dlna/DLNADevicePreference;->mPreferenceTitle:Landroid/widget/TextView;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/android/jrdsettings/dlna/DLNADevicePreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 53
    iput-object p1, p0, Lcom/android/jrdsettings/dlna/DLNADevicePreference;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/android/jrdsettings/dlna/DLNADevicePreference;->mCachedDevice:Ljrdcom/dlnaservice/DeviceInfo;

    .line 56
    invoke-virtual {p0}, Lcom/android/jrdsettings/dlna/DLNADevicePreference;->onDeviceAttributesChanged()V

    .line 57
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    .line 62
    const-string v1, "DLNADevicePreference"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v1, p0, Lcom/android/jrdsettings/dlna/DLNADevicePreference;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/jrdsettings/dlna/DLNADevicePreference;->mInflater:Landroid/view/LayoutInflater;

    .line 66
    iget-object v1, p0, Lcom/android/jrdsettings/dlna/DLNADevicePreference;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04008b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b0160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/jrdsettings/dlna/DLNADevicePreference;->mPreferenceTitle:Landroid/widget/TextView;

    .line 70
    iget-object v1, p0, Lcom/android/jrdsettings/dlna/DLNADevicePreference;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/jrdsettings/dlna/DLNADevicePreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-object v0
.end method

.method public onDeviceAttributesChanged()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNADevicePreference;->mCachedDevice:Ljrdcom/dlnaservice/DeviceInfo;

    invoke-virtual {v0}, Ljrdcom/dlnaservice/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/dlna/DLNADevicePreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 106
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyHierarchyChanged()V

    .line 107
    return-void
.end method

.method protected onPrepareForRemoval()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 80
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNADevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNADevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 82
    iput-object v1, p0, Lcom/android/jrdsettings/dlna/DLNADevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNADevicePreference;->mConnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNADevicePreference;->mConnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 86
    iput-object v1, p0, Lcom/android/jrdsettings/dlna/DLNADevicePreference;->mConnectDialog:Landroid/app/AlertDialog;

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNADevicePreference;->mRetryConnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNADevicePreference;->mRetryConnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 90
    iput-object v1, p0, Lcom/android/jrdsettings/dlna/DLNADevicePreference;->mRetryConnectDialog:Landroid/app/AlertDialog;

    .line 92
    :cond_2
    return-void
.end method

.method public setCachedDevice(Ljrdcom/dlnaservice/DeviceInfo;)V
    .locals 0
    .parameter "device"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/jrdsettings/dlna/DLNADevicePreference;->mCachedDevice:Ljrdcom/dlnaservice/DeviceInfo;

    .line 96
    return-void
.end method
