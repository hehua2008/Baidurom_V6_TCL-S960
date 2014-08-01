.class public Lcom/mediatek/gemini/simui/SimInfoViewUtil;
.super Ljava/lang/Object;
.source "SimInfoViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gemini/simui/SimInfoViewUtil$1;,
        Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;
    }
.end annotation


# static fields
.field private static final NUM_WIDTH:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SimInfoViewUtil"


# instance fields
.field mSimCustView:Landroid/widget/CompoundButton;

.field mSimIconView:Landroid/widget/RelativeLayout;

.field mSimIndicator:Landroid/widget/ImageView;

.field mSimName:Landroid/widget/TextView;

.field mSimNum:Landroid/widget/TextView;

.field mSimShortNum:Landroid/widget/TextView;

.field mWidgetFrame:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    return-void
.end method

.method private setSimNumber(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    .line 189
    const/4 v0, 0x1

    .line 190
    .local v0, isVisible:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimNum:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :goto_0
    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimNum:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    return-void

    .line 193
    :cond_0
    const-string v1, "SimInfoViewUtil"

    const-string v2, "No sim item not support to call the function"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v0, 0x0

    goto :goto_0

    .line 196
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private setSimShortNum(Ljava/lang/String;I)V
    .locals 7
    .parameter "number"
    .parameter "numberFormat"

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x0

    .line 140
    const/4 v0, 0x1

    .line 141
    .local v0, isVisible:Z
    if-eqz p1, :cond_3

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 142
    const-string v3, "SimInfoViewUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "numberFormat = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    if-eqz p2, :cond_0

    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v6, :cond_1

    .line 145
    iget-object v3, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimShortNum:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimShortNum:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 158
    return-void

    .line 147
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, shortNum:Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimShortNum:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 147
    .end local v1           #shortNum:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 154
    :cond_3
    const-string v3, "SimInfoViewUtil"

    const-string v4, "No sim item not support to call the function"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v0, 0x0

    goto :goto_0

    .line 157
    :cond_4
    const/16 v2, 0x8

    goto :goto_1
.end method


# virtual methods
.method public enableView(Landroid/view/View;Z)V
    .locals 3
    .parameter "view"
    .parameter "isEnabled"

    .prologue
    .line 176
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 177
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 178
    check-cast v1, Landroid/view/ViewGroup;

    .line 179
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 180
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->enableView(Landroid/view/View;Z)V

    .line 179
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 183
    .end local v0           #i:I
    .end local v1           #vg:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public initViewId(Landroid/view/View;)V
    .locals 1
    .parameter "convertView"

    .prologue
    .line 41
    const v0, 0x7f0b0200

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimIconView:Landroid/widget/RelativeLayout;

    .line 42
    const v0, 0x7f0b0204

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimName:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f0b0205

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimNum:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0b0201

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimIndicator:Landroid/widget/ImageView;

    .line 45
    const v0, 0x7f0b0202

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimShortNum:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0b0206

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mWidgetFrame:Landroid/widget/LinearLayout;

    .line 47
    return-void
.end method

.method public setCustomWidget(Landroid/content/Context;Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;)V
    .locals 5
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v4, 0x0

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, id:I
    sget-object v1, Lcom/mediatek/gemini/simui/SimInfoViewUtil$1;->$SwitchMap$com$mediatek$gemini$simui$SimInfoViewUtil$WidgetType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 98
    const-string v1, "SimInfoViewUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknow type type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_0
    :pswitch_0
    if-nez v0, :cond_1

    .line 102
    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mWidgetFrame:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 111
    :cond_0
    :goto_1
    return-void

    .line 89
    :pswitch_1
    const v0, 0x7f0b0208

    .line 90
    goto :goto_0

    .line 92
    :pswitch_2
    const v0, 0x7f0b0209

    .line 93
    goto :goto_0

    .line 95
    :pswitch_3
    const v0, 0x7f0b0207

    .line 96
    goto :goto_0

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mWidgetFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mWidgetFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimCustView:Landroid/widget/CompoundButton;

    .line 106
    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimCustView:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimCustView:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimCustView:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_1

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setSimBackgroundColor(I)V
    .locals 5
    .parameter "colorId"

    .prologue
    .line 118
    const/4 v0, 0x1

    .line 119
    .local v0, isVisible:Z
    if-ltz p1, :cond_1

    .line 120
    invoke-static {p1}, Lcom/mediatek/gemini/simui/CommonUtils;->getSimColorResource(I)I

    move-result v1

    .line 121
    .local v1, resColor:I
    if-ltz v1, :cond_0

    .line 122
    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimIconView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 131
    .end local v1           #resColor:I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimIconView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    return-void

    .line 124
    .restart local v1       #resColor:I
    :cond_0
    const/4 v0, 0x0

    .line 125
    const-string v2, "SimInfoViewUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wrong colorId unable to get color for sim colorId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resColor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    .end local v1           #resColor:I
    :cond_1
    const/4 v0, 0x0

    .line 129
    const-string v2, "SimInfoViewUtil"

    const-string v3, "colorId < 0 not correct"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method

.method public setSimIndicatorIcon(I)V
    .locals 5
    .parameter "indicator"

    .prologue
    .line 65
    const/4 v0, 0x1

    .line 66
    .local v0, isVisible:Z
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    .line 68
    :cond_0
    const/4 v0, 0x0

    .line 69
    const-string v2, "SimInfoViewUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "indicator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "unable to show indicator icon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    iget-object v3, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    return-void

    .line 71
    :cond_1
    invoke-static {p1}, Lcom/mediatek/gemini/simui/CommonUtils;->getStatusResource(I)I

    move-result v1

    .line 72
    .local v1, res:I
    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 74
    .end local v1           #res:I
    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method

.method public setSimInfoView(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V
    .locals 2
    .parameter "simInfo"

    .prologue
    .line 54
    iget v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->setSimBackgroundColor(I)V

    .line 55
    iget-object v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    iget v1, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDispalyNumberFormat:I

    invoke-direct {p0, v0, v1}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->setSimShortNum(Ljava/lang/String;I)V

    .line 56
    iget-object v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->setSimName(Ljava/lang/String;)V

    .line 57
    iget-object v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->setSimNumber(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public setSimName(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 165
    const/4 v0, 0x1

    .line 166
    .local v0, isVisible:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    :goto_0
    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimName:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    return-void

    .line 169
    :cond_0
    const-string v1, "SimInfoViewUtil"

    const-string v2, "No sim item not support to call the function"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v0, 0x0

    goto :goto_0

    .line 172
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method
