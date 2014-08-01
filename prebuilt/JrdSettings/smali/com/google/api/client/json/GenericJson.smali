.class public Lcom/google/api/client/json/GenericJson;
.super Lcom/google/api/client/util/GenericData;
.source "GenericJson.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private jsonFactory:Lcom/google/api/client/json/JsonFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/google/api/client/util/GenericData;->clone()Lcom/google/api/client/util/GenericData;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/GenericJson;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    return-object v0
.end method

.method public final getFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/api/client/json/GenericJson;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method

.method public final setFactory(Lcom/google/api/client/json/JsonFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/api/client/json/GenericJson;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 59
    return-void
.end method

.method public toPrettyString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/api/client/json/GenericJson;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/api/client/json/GenericJson;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-virtual {v0, p0}, Lcom/google/api/client/json/JsonFactory;->toPrettyString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/util/AbstractMap;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/api/client/json/GenericJson;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/api/client/json/GenericJson;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-virtual {v0, p0}, Lcom/google/api/client/json/JsonFactory;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/util/AbstractMap;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
