.class public Lcom/android/jrdsettings/net/NetworkPolicyEditor;
.super Ljava/lang/Object;
.source "NetworkPolicyEditor.java"


# static fields
.field public static final ENABLE_SPLIT_POLICIES:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkPolicyEditor"


# instance fields
.field private mPolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;


# direct methods
.method public constructor <init>(Landroid/net/NetworkPolicyManager;)V
    .locals 1
    .parameter "policyManager"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    .line 62
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    iput-object v0, p0, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/net/NetworkPolicyEditor;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method private static buildDefaultPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 15
    .parameter "template"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 139
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 140
    const/4 v2, -0x1

    .line 141
    .local v2, cycleDay:I
    const-string v3, "UTC"

    .line 142
    .local v3, cycleTimezone:Ljava/lang/String;
    const/4 v12, 0x0

    .line 151
    .local v12, metered:Z
    :goto_0
    new-instance v0, Landroid/net/NetworkPolicy;

    const/4 v13, 0x1

    move-object v1, p0

    move-wide v6, v4

    move-wide v8, v4

    move-wide v10, v4

    invoke-direct/range {v0 .. v13}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    return-object v0

    .line 144
    .end local v2           #cycleDay:I
    .end local v3           #cycleTimezone:Ljava/lang/String;
    .end local v12           #metered:Z
    :cond_0
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 145
    .local v14, time:Landroid/text/format/Time;
    invoke-virtual {v14}, Landroid/text/format/Time;->setToNow()V

    .line 146
    iget v2, v14, Landroid/text/format/Time;->monthDay:I

    .line 147
    .restart local v2       #cycleDay:I
    iget-object v3, v14, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 148
    .restart local v3       #cycleTimezone:Ljava/lang/String;
    const/4 v12, 0x1

    .restart local v12       #metered:Z
    goto :goto_0
.end method

.method private cleanPolicyActive()V
    .locals 3

    .prologue
    .line 171
    iget-object v2, p0, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicy;

    .line 172
    .local v1, policy:Landroid/net/NetworkPolicy;
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/net/NetworkPolicy;->active:Z

    goto :goto_0

    .line 174
    .end local v1           #policy:Landroid/net/NetworkPolicy;
    :cond_0
    return-void
.end method

.method private forceMobilePolicyCombined()Z
    .locals 6

    .prologue
    .line 281
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    .line 282
    .local v4, subscriberIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicy;

    .line 283
    .local v2, policy:Landroid/net/NetworkPolicy;
    iget-object v5, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v5}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 286
    .end local v2           #policy:Landroid/net/NetworkPolicy;
    :cond_0
    const/4 v1, 0x0

    .line 287
    .local v1, modified:Z
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 288
    .local v3, subscriberId:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->setMobilePolicySplitInternal(Ljava/lang/String;Z)Z

    move-result v5

    or-int/2addr v1, v5

    goto :goto_1

    .line 290
    .end local v3           #subscriberId:Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private setMobilePolicySplitInternal(Ljava/lang/String;Z)Z
    .locals 26
    .parameter "subscriberId"
    .parameter "split"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 328
    invoke-virtual/range {p0 .. p1}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->isMobilePolicySplit(Ljava/lang/String;)Z

    move-result v20

    .line 330
    .local v20, beforeSplit:Z
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    .line 331
    .local v5, template3g:Landroid/net/NetworkTemplate;
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v25

    .line 332
    .local v25, template4g:Landroid/net/NetworkTemplate;
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    .line 334
    .local v3, templateAll:Landroid/net/NetworkTemplate;
    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 336
    const/4 v2, 0x0

    .line 364
    .end local v5           #template3g:Landroid/net/NetworkTemplate;
    :goto_0
    return v2

    .line 338
    .restart local v5       #template3g:Landroid/net/NetworkTemplate;
    :cond_0
    if-eqz v20, :cond_2

    if-nez p2, :cond_2

    .line 340
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v21

    .line 341
    .local v21, policy3g:Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v22

    .line 343
    .local v22, policy4g:Landroid/net/NetworkPolicy;
    invoke-virtual/range {v21 .. v22}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result v2

    if-gez v2, :cond_1

    move-object/from16 v24, v21

    .line 345
    .local v24, restrictive:Landroid/net/NetworkPolicy;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v2, Landroid/net/NetworkPolicy;

    move-object/from16 v0, v24

    iget v4, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move-object/from16 v0, v24

    iget-object v5, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    .end local v5           #template3g:Landroid/net/NetworkTemplate;
    move-object/from16 v0, v24

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-object/from16 v0, v24

    iget-wide v8, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    move-object/from16 v0, v24

    iget-boolean v14, v0, Landroid/net/NetworkPolicy;->metered:Z

    move-object/from16 v0, v24

    iget-boolean v15, v0, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-direct/range {v2 .. v15}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    const/4 v2, 0x1

    goto :goto_0

    .end local v24           #restrictive:Landroid/net/NetworkPolicy;
    .restart local v5       #template3g:Landroid/net/NetworkTemplate;
    :cond_1
    move-object/from16 v24, v22

    .line 343
    goto :goto_1

    .line 352
    .end local v21           #policy3g:Landroid/net/NetworkPolicy;
    .end local v22           #policy4g:Landroid/net/NetworkPolicy;
    :cond_2
    if-nez v20, :cond_3

    if-eqz p2, :cond_3

    .line 354
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v23

    .line 355
    .local v23, policyAll:Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    new-instance v4, Landroid/net/NetworkPolicy;

    move-object/from16 v0, v23

    iget v6, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move-object/from16 v0, v23

    iget-object v7, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-wide v8, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-object/from16 v0, v23

    iget-wide v10, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v12, -0x1

    const-wide/16 v14, -0x1

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/net/NetworkPolicy;->metered:Z

    move/from16 v16, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/net/NetworkPolicy;->inferred:Z

    move/from16 v17, v0

    invoke-direct/range {v4 .. v17}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    new-instance v6, Landroid/net/NetworkPolicy;

    move-object/from16 v0, v23

    iget v8, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move-object/from16 v0, v23

    iget-object v9, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-wide v10, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-object/from16 v0, v23

    iget-wide v12, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v14, -0x1

    const-wide/16 v16, -0x1

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/net/NetworkPolicy;->metered:Z

    move/from16 v18, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/net/NetworkPolicy;->inferred:Z

    move/from16 v19, v0

    move-object/from16 v7, v25

    invoke-direct/range {v6 .. v19}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 364
    .end local v23           #policyAll:Landroid/net/NetworkPolicy;
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 2
    .parameter "template"

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 116
    .local v0, policy:Landroid/net/NetworkPolicy;
    if-nez v0, :cond_0

    .line 117
    invoke-static {p1}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->buildDefaultPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_0
    return-object v0
.end method

.method public getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 3
    .parameter "template"

    .prologue
    .line 124
    iget-object v2, p0, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicy;

    .line 125
    .local v1, policy:Landroid/net/NetworkPolicy;
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, p1}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    .end local v1           #policy:Landroid/net/NetworkPolicy;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPolicyCycleDay(Landroid/net/NetworkTemplate;)I
    .locals 1
    .parameter "template"

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iget v0, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    return v0
.end method

.method public getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J
    .locals 2
    .parameter "template"

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    return-wide v0
.end method

.method public getPolicyMetered(Landroid/net/NetworkTemplate;)Z
    .locals 2
    .parameter "template"

    .prologue
    .line 210
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 211
    .local v0, policy:Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_0

    .line 212
    iget-boolean v1, v0, Landroid/net/NetworkPolicy;->metered:Z

    .line 214
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J
    .locals 2
    .parameter "template"

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    return-wide v0
.end method

.method public hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z
    .locals 5
    .parameter "template"

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 111
    .local v0, policy:Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_0

    iget-wide v1, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Landroid/net/NetworkPolicy;->active:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMobilePolicySplit(Ljava/lang/String;)Z
    .locals 6
    .parameter "subscriberId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, has3g:Z
    const/4 v1, 0x0

    .line 297
    .local v1, has4g:Z
    iget-object v5, p0, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    .line 298
    .local v3, policy:Landroid/net/NetworkPolicy;
    iget-object v4, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 299
    .local v4, template:Landroid/net/NetworkTemplate;
    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 300
    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 302
    :pswitch_0
    const/4 v0, 0x1

    .line 303
    goto :goto_0

    .line 305
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 310
    .end local v3           #policy:Landroid/net/NetworkPolicy;
    .end local v4           #template:Landroid/net/NetworkTemplate;
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 300
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public read()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    .line 66
    iget-object v6, p0, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v6}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v4

    .line 68
    .local v4, policies:[Landroid/net/NetworkPolicy;
    const/4 v3, 0x0

    .line 69
    .local v3, modified:Z
    iget-object v6, p0, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 70
    move-object v0, v4

    .local v0, arr$:[Landroid/net/NetworkPolicy;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 72
    .local v5, policy:Landroid/net/NetworkPolicy;
    iget-wide v6, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 73
    iput-wide v8, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 74
    const/4 v3, 0x1

    .line 76
    :cond_0
    iget-wide v6, v5, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 77
    iput-wide v8, v5, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 78
    const/4 v3, 0x1

    .line 81
    :cond_1
    iget-object v6, p0, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v5           #policy:Landroid/net/NetworkPolicy;
    :cond_2
    invoke-direct {p0}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->forceMobilePolicyCombined()Z

    move-result v6

    or-int/2addr v3, v6

    .line 90
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->writeAsync()V

    .line 91
    :cond_3
    return-void
.end method

.method public setMobilePolicySplit(Ljava/lang/String;Z)V
    .locals 1
    .parameter "subscriberId"
    .parameter "split"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 315
    invoke-direct {p0, p1, p2}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->setMobilePolicySplitInternal(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->writeAsync()V

    .line 318
    :cond_0
    return-void
.end method

.method public setPolicyActive(Landroid/net/NetworkPolicy;)V
    .locals 1
    .parameter "policy"

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->cleanPolicyActive()V

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/net/NetworkPolicy;->active:Z

    .line 179
    return-void
.end method

.method public setPolicyCycleDay(Landroid/net/NetworkTemplate;ILjava/lang/String;)V
    .locals 2
    .parameter "template"
    .parameter "cycleDay"
    .parameter "cycleTimezone"

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 161
    .local v0, policy:Landroid/net/NetworkPolicy;
    invoke-direct {p0}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->cleanPolicyActive()V

    .line 162
    iput p2, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    .line 163
    iput-object p3, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    .line 164
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 165
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->active:Z

    .line 166
    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 167
    invoke-virtual {p0}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->writeAsync()V

    .line 168
    return-void
.end method

.method public setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V
    .locals 2
    .parameter "template"
    .parameter "limitBytes"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 201
    .local v0, policy:Landroid/net/NetworkPolicy;
    invoke-direct {p0}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->cleanPolicyActive()V

    .line 202
    iput-wide p2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 203
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 204
    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 205
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->active:Z

    .line 206
    invoke-virtual {p0}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->writeAsync()V

    .line 207
    return-void
.end method

.method public setPolicyMetered(Landroid/net/NetworkTemplate;Z)V
    .locals 8
    .parameter "template"
    .parameter "metered"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 219
    const/4 v0, 0x0

    .line 221
    .local v0, modified:Z
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v1

    .line 223
    .local v1, policy:Landroid/net/NetworkPolicy;
    const-string v2, "NetworkPolicyEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPolicyMetered "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,checkbox state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    if-ne v7, v2, :cond_4

    .line 225
    :cond_0
    if-eqz v1, :cond_1

    .line 226
    iput-boolean v5, v1, Landroid/net/NetworkPolicy;->active:Z

    .line 232
    :cond_1
    :goto_0
    if-eqz p2, :cond_6

    .line 233
    if-nez v1, :cond_5

    .line 234
    invoke-static {p1}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->buildDefaultPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v1

    .line 235
    iput-boolean v6, v1, Landroid/net/NetworkPolicy;->metered:Z

    .line 236
    iput-boolean v5, v1, Landroid/net/NetworkPolicy;->inferred:Z

    .line 238
    iput-boolean v6, v1, Landroid/net/NetworkPolicy;->active:Z

    .line 240
    iget-object v2, p0, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    const/4 v0, 0x1

    .line 264
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 266
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    if-ne v7, v2, :cond_7

    .line 267
    const-string v2, "NetworkPolicyEditor"

    const-string v3, "modify wifi policy to update all the policies"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p0}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->writeAsyncForWifi()V

    .line 275
    :cond_3
    :goto_2
    return-void

    .line 229
    :cond_4
    invoke-direct {p0}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->cleanPolicyActive()V

    goto :goto_0

    .line 242
    :cond_5
    iget-boolean v2, v1, Landroid/net/NetworkPolicy;->metered:Z

    if-nez v2, :cond_2

    .line 243
    iput-boolean v6, v1, Landroid/net/NetworkPolicy;->metered:Z

    .line 244
    iput-boolean v5, v1, Landroid/net/NetworkPolicy;->inferred:Z

    .line 246
    iput-boolean v6, v1, Landroid/net/NetworkPolicy;->active:Z

    .line 248
    const/4 v0, 0x1

    goto :goto_1

    .line 252
    :cond_6
    if-eqz v1, :cond_2

    .line 254
    iget-boolean v2, v1, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v2, :cond_2

    .line 255
    iput-boolean v5, v1, Landroid/net/NetworkPolicy;->metered:Z

    .line 256
    iput-boolean v5, v1, Landroid/net/NetworkPolicy;->inferred:Z

    .line 258
    iput-boolean v6, v1, Landroid/net/NetworkPolicy;->active:Z

    .line 260
    const/4 v0, 0x1

    goto :goto_1

    .line 272
    :cond_7
    invoke-virtual {p0}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->writeAsync()V

    goto :goto_2
.end method

.method public setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V
    .locals 2
    .parameter "template"
    .parameter "warningBytes"

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 187
    .local v0, policy:Landroid/net/NetworkPolicy;
    invoke-direct {p0}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->cleanPolicyActive()V

    .line 188
    iput-wide p2, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 189
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 190
    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 191
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->active:Z

    .line 192
    invoke-virtual {p0}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->writeAsync()V

    .line 193
    return-void
.end method

.method public write([Landroid/net/NetworkPolicy;)V
    .locals 1
    .parameter "policies"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 107
    return-void
.end method

.method public writeAsync()V
    .locals 3

    .prologue
    .line 95
    iget-object v1, p0, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/NetworkPolicy;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkPolicy;

    .line 96
    .local v0, policies:[Landroid/net/NetworkPolicy;
    new-instance v1, Lcom/android/jrdsettings/net/NetworkPolicyEditor$1;

    invoke-direct {v1, p0, v0}, Lcom/android/jrdsettings/net/NetworkPolicyEditor$1;-><init>(Lcom/android/jrdsettings/net/NetworkPolicyEditor;[Landroid/net/NetworkPolicy;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 103
    return-void
.end method

.method public writeAsyncForWifi()V
    .locals 3

    .prologue
    .line 376
    iget-object v1, p0, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/NetworkPolicy;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkPolicy;

    .line 377
    .local v0, policies:[Landroid/net/NetworkPolicy;
    new-instance v1, Lcom/android/jrdsettings/net/NetworkPolicyEditor$2;

    invoke-direct {v1, p0, v0}, Lcom/android/jrdsettings/net/NetworkPolicyEditor$2;-><init>(Lcom/android/jrdsettings/net/NetworkPolicyEditor;[Landroid/net/NetworkPolicy;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 384
    return-void
.end method
