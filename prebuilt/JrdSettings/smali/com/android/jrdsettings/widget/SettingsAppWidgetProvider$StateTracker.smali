.class abstract Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;
.super Ljava/lang/Object;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "StateTracker"
.end annotation


# instance fields
.field private mActualState:Ljava/lang/Boolean;

.field private mDeferredStateChangeRequestNeeded:Z

.field private mInTransition:Z

.field private mIntendedState:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-boolean v0, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 152
    iput-object v1, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 153
    iput-object v1, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 159
    iput-boolean v0, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;-><init>()V

    return-void
.end method

.method private final getContentDescription(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "stateResId"

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonDescription()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, gadget:Ljava/lang/String;
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, state:Ljava/lang/String;
    const v2, 0x7f09079f

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public abstract getButtonDescription()I
.end method

.method public abstract getButtonId()I
.end method

.method public abstract getButtonImageId(Z)I
.end method

.method public abstract getContainerId()I
.end method

.method public abstract getIndicatorId()I
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x1

    return v0
.end method

.method public final getTriState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x5

    .line 346
    iget-boolean v1, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    if-eqz v1, :cond_0

    .line 362
    :goto_0
    return v0

    .line 356
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 358
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 360
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isTurningOn()Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected abstract requestStateChange(Landroid/content/Context;Z)V
.end method

.method protected final setCurrentState(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "newState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 295
    iget-boolean v0, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 296
    .local v0, wasInTransition:Z
    packed-switch p2, :pswitch_data_0

    .line 315
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    if-nez v1, :cond_1

    .line 316
    iget-boolean v1, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    if-eqz v1, :cond_1

    .line 317
    const-string v1, "SettingsAppWidgetProvider"

    const-string v2, "processing deferred state change"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v1, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 320
    const-string v1, "SettingsAppWidgetProvider"

    const-string v2, "... but intended state matches, so no changes."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    :goto_1
    iput-boolean v3, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 328
    :cond_1
    return-void

    .line 298
    :pswitch_0
    iput-boolean v3, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 299
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 302
    :pswitch_1
    iput-boolean v3, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 303
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 306
    :pswitch_2
    iput-boolean v4, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 307
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 310
    :pswitch_3
    iput-boolean v4, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 311
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 321
    :cond_2
    iget-object v1, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 322
    iput-boolean v4, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 323
    iget-object v1, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 296
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 7
    .parameter "context"
    .parameter "views"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 231
    invoke-virtual {p0}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->getContainerId()I

    move-result v1

    .line 232
    .local v1, containerId:I
    invoke-virtual {p0}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonId()I

    move-result v0

    .line 233
    .local v0, buttonId:I
    invoke-virtual {p0}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->getIndicatorId()I

    move-result v2

    .line 234
    .local v2, indicatorId:I
    invoke-virtual {p0}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->getPosition()I

    move-result v3

    .line 235
    .local v3, pos:I
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 271
    :goto_0
    :pswitch_0
    return-void

    .line 237
    :pswitch_1
    const v4, 0x7f0907a1

    invoke-direct {p0, p1, v4}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->getContentDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 239
    invoke-virtual {p0, v5}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result v4

    invoke-virtual {p2, v0, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 240
    invoke-static {}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider;->access$400()[I

    move-result-object v4

    aget v4, v4, v3

    invoke-virtual {p2, v2, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 244
    :pswitch_2
    const v4, 0x7f0907a0

    invoke-direct {p0, p1, v4}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->getContentDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 246
    invoke-virtual {p0, v6}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result v4

    invoke-virtual {p2, v0, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 247
    invoke-static {}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider;->access$500()[I

    move-result-object v4

    aget v4, v4, v3

    invoke-virtual {p2, v2, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 256
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->isTurningOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 257
    const v4, 0x7f0907a2

    invoke-direct {p0, p1, v4}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->getContentDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 259
    invoke-virtual {p0, v6}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result v4

    invoke-virtual {p2, v0, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 260
    invoke-static {}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider;->access$600()[I

    move-result-object v4

    aget v4, v4, v3

    invoke-virtual {p2, v2, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 263
    :cond_0
    const v4, 0x7f0907a3

    invoke-direct {p0, p1, v4}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->getContentDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 265
    invoke-virtual {p0, v5}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result v4

    invoke-virtual {p2, v0, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 266
    invoke-static {}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider;->access$400()[I

    move-result-object v4

    aget v4, v4, v3

    invoke-virtual {p2, v2, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final toggleState(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    .line 168
    .local v0, currentState:I
    const/4 v1, 0x0

    .line 169
    .local v1, newState:Z
    packed-switch v0, :pswitch_data_0

    .line 182
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 183
    iget-boolean v3, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    if-eqz v3, :cond_2

    .line 188
    iput-boolean v2, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 193
    :goto_1
    return-void

    .line 171
    :pswitch_1
    const/4 v1, 0x0

    .line 172
    goto :goto_0

    .line 174
    :pswitch_2
    const/4 v1, 0x1

    .line 175
    goto :goto_0

    .line 177
    :pswitch_3
    iget-object v3, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 178
    iget-object v3, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    :goto_2
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 190
    :cond_2
    iput-boolean v2, p0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 191
    invoke-virtual {p0, p1, v1}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
