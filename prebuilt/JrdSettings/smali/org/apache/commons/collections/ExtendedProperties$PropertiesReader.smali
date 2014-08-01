.class Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;
.super Ljava/io/LineNumberReader;
.source "ExtendedProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/ExtendedProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PropertiesReader"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0
    .parameter "reader"

    .prologue
    .line 353
    invoke-direct {p0, p1}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 354
    return-void
.end method


# virtual methods
.method public readProperty()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 367
    .local v0, buffer:Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, line:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_0

    .line 369
    invoke-static {v2}, Lorg/apache/commons/collections/ExtendedProperties;->access$000(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 370
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 371
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 379
    .end local v2           #line:Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/NullPointerException;
    const/4 v3, 0x0

    .line 382
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :goto_1
    return-object v3

    .line 373
    .restart local v2       #line:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
