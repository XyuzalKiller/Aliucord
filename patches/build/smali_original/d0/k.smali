.class public final Ld0/k;
.super Ljava/lang/Object;
.source "Result.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld0/k$b;,
        Ld0/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final j:Ld0/k$a;


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld0/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld0/k$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ld0/k;->j:Ld0/k$a;

    return-void
.end method

.method public static constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static equals-impl(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ld0/k;

    if-eqz v0, :cond_12

    check-cast p1, Ld0/k;

    invoke-virtual {p1}, Ld0/k;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ld0/z/d/m;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static final exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    .line 1
    instance-of v0, p0, Ld0/k$b;

    if-eqz v0, :cond_9

    check-cast p0, Ld0/k$b;

    iget-object p0, p0, Ld0/k$b;->exception:Ljava/lang/Throwable;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public static hashCode-impl(Ljava/lang/Object;)I
    .locals 0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public static final isFailure-impl(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Ld0/k$b;

    return p0
.end method

.method public static final isSuccess-impl(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Ld0/k$b;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static toString-impl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    instance-of v0, p0, Ld0/k$b;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1f

    .line 2
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Success("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1f
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld0/k;->value:Ljava/lang/Object;

    invoke-static {v0, p1}, Ld0/k;->equals-impl(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Ld0/k;->value:Ljava/lang/Object;

    invoke-static {v0}, Ld0/k;->hashCode-impl(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ld0/k;->value:Ljava/lang/Object;

    invoke-static {v0}, Ld0/k;->toString-impl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ld0/k;->value:Ljava/lang/Object;

    return-object v0
.end method
