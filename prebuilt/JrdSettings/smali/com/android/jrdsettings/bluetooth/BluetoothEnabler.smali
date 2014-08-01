.class public final Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothEnabler"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mUpdateStatusOnly:Z

.field private mValidListener:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v2, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    .line 76
    new-instance v1, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;)V

    iput-object v1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 142
    new-instance v1, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler$2;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler$2;-><init>(Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;)V

    iput-object v1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    .line 88
    iput-object p1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    .line 90
    iput-boolean v2, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    .line 92
    invoke-static {p1}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 93
    .local v0, manager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    .line 95
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    .line 96
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 100
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 101
    return-void

    .line 98
    :cond_0
    invoke-virtual {v0}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private setChecked(Z)V
    .locals 2
    .parameter "isChecked"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 216
    iget-boolean v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 220
    iget-boolean v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 224
    :cond_1
    return-void
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 175
    packed-switch p1, :pswitch_data_0

    .line 207
    invoke-direct {p0, v2}, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 208
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 210
    :goto_0
    return-void

    .line 177
    :pswitch_0
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 181
    :pswitch_1
    iput-boolean v3, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    .line 182
    const-string v0, "BluetoothEnabler"

    const-string v1, "Begin update status: set mUpdateStatusOnly to true"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0, v3}, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 185
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 187
    iput-boolean v2, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    .line 188
    const-string v0, "BluetoothEnabler"

    const-string v1, "End update status: set mUpdateStatusOnly to false"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 192
    :pswitch_2
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 196
    :pswitch_3
    iput-boolean v3, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    .line 197
    const-string v0, "BluetoothEnabler"

    const-string v1, "Begin update status: set mUpdateStatusOnly to true"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-direct {p0, v2}, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 202
    iput-boolean v2, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    .line 203
    const-string v0, "BluetoothEnabler"

    const-string v1, "End update status: set mUpdateStatusOnly to false"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 154
    const-string v0, "BluetoothEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckChanged to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-static {v0, v1}, Lcom/android/jrdsettings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f090412

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 159
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 161
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 172
    :goto_0
    return-void

    .line 166
    :cond_0
    const-string v0, "BluetoothEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUpdateStatusOnly is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p2}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 115
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 112
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 8
    .parameter "switch_"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 128
    iget-object v6, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v6, p1, :cond_0

    .line 139
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v6, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 130
    iput-object p1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    .line 131
    iget-object v6, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    iget-boolean v7, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v7, :cond_1

    move-object v3, p0

    :cond_1
    invoke-virtual {v6, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 133
    const/16 v0, 0xa

    .line 134
    .local v0, bluetoothState:I
    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    .line 135
    :cond_2
    const/16 v3, 0xc

    if-ne v0, v3, :cond_5

    move v2, v4

    .line 136
    .local v2, isOn:Z
    :goto_1
    const/16 v3, 0xa

    if-ne v0, v3, :cond_6

    move v1, v4

    .line 137
    .local v1, isOff:Z
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 138
    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v2, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    move v5, v4

    :cond_4
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .end local v1           #isOff:Z
    .end local v2           #isOn:Z
    :cond_5
    move v2, v5

    .line 135
    goto :goto_1

    .restart local v2       #isOn:Z
    :cond_6
    move v1, v5

    .line 136
    goto :goto_2
.end method
