.class public Lcom/android/jrdsettings/ApnPreference;
.super Landroid/preference/Preference;
.source "ApnPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field static final TAG:Ljava/lang/String; = "ApnPreference"

.field private static sCurrentChecked:Landroid/widget/CompoundButton;

.field private static sIsCU:Z

.field private static sSelectedKey:Ljava/lang/String;


# instance fields
.field private mEditable:Z

.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z

.field private mSlotId:I

.field private mSourceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    sput-object v0, Lcom/android/jrdsettings/ApnPreference;->sSelectedKey:Ljava/lang/String;

    .line 72
    sput-object v0, Lcom/android/jrdsettings/ApnPreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    .line 78
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/jrdsettings/ApnPreference;->sIsCU:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 73
    iput-boolean v1, p0, Lcom/android/jrdsettings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 74
    iput-boolean v2, p0, Lcom/android/jrdsettings/ApnPreference;->mSelectable:Z

    .line 76
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/jrdsettings/ApnPreference;->mSourceType:I

    .line 77
    iput v1, p0, Lcom/android/jrdsettings/ApnPreference;->mSlotId:I

    .line 79
    iput-boolean v2, p0, Lcom/android/jrdsettings/ApnPreference;->mEditable:Z

    .line 68
    invoke-direct {p0}, Lcom/android/jrdsettings/ApnPreference;->init()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    iput-boolean v1, p0, Lcom/android/jrdsettings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 74
    iput-boolean v2, p0, Lcom/android/jrdsettings/ApnPreference;->mSelectable:Z

    .line 76
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/jrdsettings/ApnPreference;->mSourceType:I

    .line 77
    iput v1, p0, Lcom/android/jrdsettings/ApnPreference;->mSlotId:I

    .line 79
    iput-boolean v2, p0, Lcom/android/jrdsettings/ApnPreference;->mEditable:Z

    .line 60
    invoke-direct {p0}, Lcom/android/jrdsettings/ApnPreference;->init()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    iput-boolean v1, p0, Lcom/android/jrdsettings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 74
    iput-boolean v2, p0, Lcom/android/jrdsettings/ApnPreference;->mSelectable:Z

    .line 76
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/jrdsettings/ApnPreference;->mSourceType:I

    .line 77
    iput v1, p0, Lcom/android/jrdsettings/ApnPreference;->mSlotId:I

    .line 79
    iput-boolean v2, p0, Lcom/android/jrdsettings/ApnPreference;->mEditable:Z

    .line 51
    invoke-direct {p0}, Lcom/android/jrdsettings/ApnPreference;->init()V

    .line 52
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 114
    const v0, 0x7f040006

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 115
    return-void
.end method


# virtual methods
.method public getSelectable()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/android/jrdsettings/ApnPreference;->mSelectable:Z

    return v0
.end method

.method public getSourceType()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/android/jrdsettings/ApnPreference;->mSourceType:I

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 85
    .local v3, view:Landroid/view/View;
    const v5, 0x1010001

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 86
    .local v4, widget:Landroid/view/View;
    if-eqz v4, :cond_1

    instance-of v5, v4, Landroid/widget/RadioButton;

    if-eqz v5, :cond_1

    move-object v1, v4

    .line 87
    check-cast v1, Landroid/widget/RadioButton;

    .line 88
    .local v1, rb:Landroid/widget/RadioButton;
    iget-boolean v5, p0, Lcom/android/jrdsettings/ApnPreference;->mSelectable:Z

    if-eqz v5, :cond_3

    .line 89
    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 91
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/jrdsettings/ApnPreference;->sSelectedKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 92
    .local v0, isChecked:Z
    if-eqz v0, :cond_0

    .line 93
    sput-object v1, Lcom/android/jrdsettings/ApnPreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    .line 94
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/jrdsettings/ApnPreference;->sSelectedKey:Ljava/lang/String;

    .line 97
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/jrdsettings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 98
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 99
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/jrdsettings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 105
    .end local v0           #isChecked:Z
    .end local v1           #rb:Landroid/widget/RadioButton;
    :cond_1
    :goto_0
    const/high16 v5, 0x101

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 106
    .local v2, textLayout:Landroid/view/View;
    if-eqz v2, :cond_2

    instance-of v5, v2, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_2

    .line 107
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    :cond_2
    return-object v3

    .line 101
    .end local v2           #textLayout:Landroid/view/View;
    .restart local v1       #rb:Landroid/widget/RadioButton;
    :cond_3
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/jrdsettings/ApnPreference;->sSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 126
    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-boolean v0, p0, Lcom/android/jrdsettings/ApnPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 131
    :cond_0
    if-eqz p2, :cond_2

    .line 132
    sget-object v0, Lcom/android/jrdsettings/ApnPreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 133
    sget-object v0, Lcom/android/jrdsettings/ApnPreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 135
    :cond_1
    sput-object p1, Lcom/android/jrdsettings/ApnPreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    .line 136
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/jrdsettings/ApnPreference;->sSelectedKey:Ljava/lang/String;

    .line 137
    sget-object v0, Lcom/android/jrdsettings/ApnPreference;->sSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    :cond_2
    sput-object v3, Lcom/android/jrdsettings/ApnPreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    .line 140
    sput-object v3, Lcom/android/jrdsettings/ApnPreference;->sSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 145
    if-eqz p1, :cond_0

    const/high16 v5, 0x101

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 146
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 147
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 151
    .local v3, pos:I
    sget-object v5, Lcom/mediatek/apn/ApnUtils;->URI_LIST:[Landroid/net/Uri;

    iget v6, p0, Lcom/android/jrdsettings/ApnPreference;->mSlotId:I

    aget-object v2, v5, v6

    .line 156
    .local v2, orig:Landroid/net/Uri;
    int-to-long v5, v3

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 158
    .local v4, url:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.EDIT"

    invoke-direct {v1, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 159
    .local v1, it:Landroid/content/Intent;
    const-string v5, "slotid"

    iget v6, p0, Lcom/android/jrdsettings/ApnPreference;->mSlotId:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    const-string v6, "readOnly"

    iget-boolean v5, p0, Lcom/android/jrdsettings/ApnPreference;->mEditable:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 164
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #it:Landroid/content/Intent;
    .end local v2           #orig:Landroid/net/Uri;
    .end local v3           #pos:I
    .end local v4           #url:Landroid/net/Uri;
    :cond_0
    return-void

    .line 160
    .restart local v0       #context:Landroid/content/Context;
    .restart local v1       #it:Landroid/content/Intent;
    .restart local v2       #orig:Landroid/net/Uri;
    .restart local v3       #pos:I
    .restart local v4       #url:Landroid/net/Uri;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public setApnEditable(Z)V
    .locals 0
    .parameter "isEditable"

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/android/jrdsettings/ApnPreference;->mEditable:Z

    .line 180
    return-void
.end method

.method public setChecked()V
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/jrdsettings/ApnPreference;->sSelectedKey:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .parameter "selectable"

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/android/jrdsettings/ApnPreference;->mSelectable:Z

    .line 168
    return-void
.end method

.method public setSlotId(I)V
    .locals 0
    .parameter "slotid"

    .prologue
    .line 175
    iput p1, p0, Lcom/android/jrdsettings/ApnPreference;->mSlotId:I

    .line 176
    return-void
.end method

.method public setSourceType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 187
    iput p1, p0, Lcom/android/jrdsettings/ApnPreference;->mSourceType:I

    .line 188
    return-void
.end method
