.class public final Lb/i/d/q/q;
.super Ljava/lang/Number;
.source "LazilyParsedNumber.java"


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 2
    iput-object p1, p0, Lb/i/d/q/q;->value:Ljava/lang/String;

    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lb/i/d/q/q;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public doubleValue()D
    .locals 2

    .line 1
    iget-object v0, p0, Lb/i/d/q/q;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lb/i/d/q/q;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 2
    check-cast p1, Lb/i/d/q/q;

    .line 3
    iget-object v1, p0, Lb/i/d/q/q;->value:Ljava/lang/String;

    iget-object p1, p1, Lb/i/d/q/q;->value:Ljava/lang/String;

    if-eq v1, p1, :cond_19

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :cond_19
    :goto_19
    return v0

    :cond_1a
    return v2
.end method

.method public floatValue()F
    .locals 1

    .line 1
    iget-object v0, p0, Lb/i/d/q/q;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/i/d/q/q;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/i/d/q/q;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2
    :catch_7
    :try_start_7
    iget-object v0, p0, Lb/i/d/q/q;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_d} :catch_f

    long-to-int v1, v0

    return v1

    .line 3
    :catch_f
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lb/i/d/q/q;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/i/d/q/q;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 2
    :catch_7
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lb/i/d/q/q;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/i/d/q/q;->value:Ljava/lang/String;

    return-object v0
.end method
