.class public Lcom/esotericsoftware/kryo/serializers/TimeSerializers$LocalTimeSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "TimeSerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/TimeSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalTimeSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/Serializer<",
        "Ljava/time/LocalTime;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/Serializer;->setImmutable(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/esotericsoftware/kryo/serializers/TimeSerializers$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$LocalTimeSerializer;-><init>()V

    return-void
.end method

.method public static read(Lcom/esotericsoftware/kryo/io/Input;)Ljava/time/LocalTime;
    .locals 5

    .line 3
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readByte()B

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_b

    not-int v0, v0

    const/4 p0, 0x0

    :goto_9
    const/4 v2, 0x0

    goto :goto_28

    .line 4
    :cond_b
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readByte()B

    move-result v2

    if-gez v2, :cond_16

    not-int p0, v2

    const/4 v2, 0x0

    move v1, p0

    const/4 p0, 0x0

    goto :goto_28

    .line 5
    :cond_16
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readByte()B

    move-result v3

    if-gez v3, :cond_1f

    not-int p0, v3

    move v1, v2

    goto :goto_9

    :cond_1f
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->readInt(Z)I

    move-result v1

    move p0, v3

    move v4, v2

    move v2, v1

    move v1, v4

    .line 7
    :goto_28
    invoke-static {v0, v1, p0, v2}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public static write(Lcom/esotericsoftware/kryo/io/Output;Ljava/time/LocalTime;)V
    .locals 1

    .line 3
    invoke-virtual {p1}, Ljava/time/LocalTime;->getNano()I

    move-result v0

    if-nez v0, :cond_42

    .line 4
    invoke-virtual {p1}, Ljava/time/LocalTime;->getSecond()I

    move-result v0

    if-nez v0, :cond_2b

    .line 5
    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result v0

    if-nez v0, :cond_1b

    .line 6
    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result p1

    not-int p1, p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    goto :goto_5f

    .line 7
    :cond_1b
    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    .line 8
    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result p1

    not-int p1, p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    goto :goto_5f

    .line 9
    :cond_2b
    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    .line 10
    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    .line 11
    invoke-virtual {p1}, Ljava/time/LocalTime;->getSecond()I

    move-result p1

    not-int p1, p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    goto :goto_5f

    .line 12
    :cond_42
    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    .line 13
    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    .line 14
    invoke-virtual {p1}, Ljava/time/LocalTime;->getSecond()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    .line 15
    invoke-virtual {p1}, Ljava/time/LocalTime;->getNano()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(IZ)I

    :goto_5f
    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$LocalTimeSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/time/LocalTime;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "Ljava/time/LocalTime;",
            ">;)",
            "Ljava/time/LocalTime;"
        }
    .end annotation

    .line 2
    invoke-static {p2}, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$LocalTimeSerializer;->read(Lcom/esotericsoftware/kryo/io/Input;)Ljava/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Ljava/time/LocalTime;

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$LocalTimeSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/time/LocalTime;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/time/LocalTime;)V
    .locals 0

    .line 2
    invoke-static {p2, p3}, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$LocalTimeSerializer;->write(Lcom/esotericsoftware/kryo/io/Output;Ljava/time/LocalTime;)V

    return-void
.end method
