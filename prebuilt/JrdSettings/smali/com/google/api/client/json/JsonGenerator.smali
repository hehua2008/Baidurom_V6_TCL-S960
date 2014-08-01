.class public abstract Lcom/google/api/client/json/JsonGenerator;
.super Ljava/lang/Object;
.source "JsonGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public enablePrettyPrint()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    return-void
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getFactory()Lcom/google/api/client/json/JsonFactory;
.end method

.method public final serialize(Ljava/lang/Object;)V
    .locals 11
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 187
    .end local p1
    :goto_0
    return-void

    .line 128
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 129
    .local v8, valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcom/google/api/client/util/Data;->isNull(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonGenerator;->writeNull()V

    goto :goto_0

    .line 131
    :cond_1
    instance-of v9, p1, Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 132
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/client/json/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    .restart local p1
    :cond_2
    instance-of v9, p1, Ljava/math/BigDecimal;

    if-eqz v9, :cond_3

    .line 134
    check-cast p1, Ljava/math/BigDecimal;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/client/json/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 135
    .restart local p1
    :cond_3
    instance-of v9, p1, Ljava/math/BigInteger;

    if-eqz v9, :cond_4

    .line 136
    check-cast p1, Ljava/math/BigInteger;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/client/json/JsonGenerator;->writeNumber(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 137
    .restart local p1
    :cond_4
    instance-of v9, p1, Lcom/google/common/primitives/UnsignedInteger;

    if-eqz v9, :cond_5

    .line 138
    check-cast p1, Lcom/google/common/primitives/UnsignedInteger;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/client/json/JsonGenerator;->writeNumber(Lcom/google/common/primitives/UnsignedInteger;)V

    goto :goto_0

    .line 139
    .restart local p1
    :cond_5
    instance-of v9, p1, Lcom/google/common/primitives/UnsignedLong;

    if-eqz v9, :cond_6

    .line 140
    check-cast p1, Lcom/google/common/primitives/UnsignedLong;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/client/json/JsonGenerator;->writeNumber(Lcom/google/common/primitives/UnsignedLong;)V

    goto :goto_0

    .line 141
    .restart local p1
    :cond_6
    instance-of v9, p1, Ljava/lang/Double;

    if-eqz v9, :cond_7

    .line 143
    check-cast p1, Ljava/lang/Double;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-virtual {p0, v9, v10}, Lcom/google/api/client/json/JsonGenerator;->writeNumber(D)V

    goto :goto_0

    .line 144
    .restart local p1
    :cond_7
    instance-of v9, p1, Ljava/lang/Long;

    if-eqz v9, :cond_8

    .line 145
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {p0, v9, v10}, Lcom/google/api/client/json/JsonGenerator;->writeNumber(J)V

    goto :goto_0

    .line 146
    .restart local p1
    :cond_8
    instance-of v9, p1, Ljava/lang/Float;

    if-eqz v9, :cond_9

    .line 148
    check-cast p1, Ljava/lang/Float;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {p0, v9}, Lcom/google/api/client/json/JsonGenerator;->writeNumber(F)V

    goto :goto_0

    .line 149
    .restart local p1
    :cond_9
    instance-of v9, p1, Ljava/lang/Integer;

    if-nez v9, :cond_a

    instance-of v9, p1, Ljava/lang/Short;

    if-nez v9, :cond_a

    instance-of v9, p1, Ljava/lang/Byte;

    if-eqz v9, :cond_b

    .line 150
    :cond_a
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/google/api/client/json/JsonGenerator;->writeNumber(I)V

    goto :goto_0

    .line 151
    .restart local p1
    :cond_b
    instance-of v9, p1, Ljava/lang/Boolean;

    if-eqz v9, :cond_c

    .line 152
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {p0, v9}, Lcom/google/api/client/json/JsonGenerator;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 153
    .restart local p1
    :cond_c
    instance-of v9, p1, Lcom/google/api/client/util/DateTime;

    if-eqz v9, :cond_d

    .line 154
    check-cast p1, Lcom/google/api/client/util/DateTime;

    .end local p1
    invoke-virtual {p1}, Lcom/google/api/client/util/DateTime;->toStringRfc3339()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/google/api/client/json/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    .restart local p1
    :cond_d
    instance-of v9, p1, Ljava/lang/Iterable;

    if-nez v9, :cond_e

    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 156
    :cond_e
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonGenerator;->writeStartArray()V

    .line 157
    invoke-static {p1}, Lcom/google/api/client/util/Types;->iterableOf(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 158
    .local v7, o:Ljava/lang/Object;
    invoke-virtual {p0, v7}, Lcom/google/api/client/json/JsonGenerator;->serialize(Ljava/lang/Object;)V

    goto :goto_1

    .line 160
    .end local v7           #o:Ljava/lang/Object;
    :cond_f
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonGenerator;->writeEndArray()V

    goto/16 :goto_0

    .line 161
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_10
    invoke-virtual {v8}, Ljava/lang/Class;->isEnum()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 162
    check-cast p1, Ljava/lang/Enum;

    .end local p1
    invoke-static {p1}, Lcom/google/api/client/util/FieldInfo;->of(Ljava/lang/Enum;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/api/client/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v6

    .line 163
    .local v6, name:Ljava/lang/String;
    if-nez v6, :cond_11

    .line 164
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonGenerator;->writeNull()V

    goto/16 :goto_0

    .line 166
    :cond_11
    invoke-virtual {p0, v6}, Lcom/google/api/client/json/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 169
    .end local v6           #name:Ljava/lang/String;
    .restart local p1
    :cond_12
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonGenerator;->writeStartObject()V

    .line 170
    invoke-static {v8}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v0

    .line 171
    .local v0, classInfo:Lcom/google/api/client/util/ClassInfo;
    invoke-static {p1}, Lcom/google/api/client/util/Data;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_13
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 172
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 173
    .local v4, fieldValue:Ljava/lang/Object;
    if-eqz v4, :cond_13

    .line 174
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 175
    .local v3, fieldName:Ljava/lang/String;
    instance-of v9, v4, Ljava/lang/Number;

    if-eqz v9, :cond_14

    .line 176
    invoke-virtual {v0, v3}, Lcom/google/api/client/util/ClassInfo;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 177
    .local v2, field:Ljava/lang/reflect/Field;
    if-eqz v2, :cond_14

    const-class v9, Lcom/google/api/client/json/JsonString;

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    if-eqz v9, :cond_14

    .line 178
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 181
    .end local v2           #field:Ljava/lang/reflect/Field;
    .end local v4           #fieldValue:Ljava/lang/Object;
    :cond_14
    invoke-virtual {p0, v3}, Lcom/google/api/client/json/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0, v4}, Lcom/google/api/client/json/JsonGenerator;->serialize(Ljava/lang/Object;)V

    goto :goto_2

    .line 185
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #fieldName:Ljava/lang/String;
    :cond_15
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0
.end method

.method public abstract writeBoolean(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeEndArray()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeEndObject()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeFieldName(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNull()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNumber(D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNumber(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNumber(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNumber(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNumber(Lcom/google/common/primitives/UnsignedInteger;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNumber(Lcom/google/common/primitives/UnsignedLong;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNumber(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNumber(Ljava/math/BigDecimal;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNumber(Ljava/math/BigInteger;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeStartArray()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeStartObject()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeString(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
