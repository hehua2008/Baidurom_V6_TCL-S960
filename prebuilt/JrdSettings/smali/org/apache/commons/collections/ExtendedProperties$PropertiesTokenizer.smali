.class Lorg/apache/commons/collections/ExtendedProperties$PropertiesTokenizer;
.super Ljava/util/StringTokenizer;
.source "ExtendedProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/ExtendedProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PropertiesTokenizer"
.end annotation


# static fields
.field static final DELIMITER:Ljava/lang/String; = ","


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 403
    const-string v0, ","

    invoke-direct {p0, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void
.end method


# virtual methods
.method public hasMoreTokens()Z
    .locals 1

    .prologue
    .line 412
    invoke-super {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    return v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 421
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 423
    .local v0, buffer:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/ExtendedProperties$PropertiesTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_0

    .line 434
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 424
    :cond_0
    invoke-super {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 425
    .local v1, token:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/commons/collections/ExtendedProperties;->access$000(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 426
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 427
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 429
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
