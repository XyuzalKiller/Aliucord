.class public final Lb/c/a/a0/d$a;
.super Ljava/lang/Object;
.source "ArrayBuilders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/c/a/a0/d;->q0(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Class;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/c/a/a0/d$a;->a:Ljava/lang/Class;

    iput p2, p0, Lb/c/a/a0/d$a;->b:I

    iput-object p3, p0, Lb/c/a/a0/d$a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    iget-object v1, p0, Lb/c/a/a0/d$a;->a:Ljava/lang/Class;

    invoke-static {p1, v1}, Lb/g/a/c/i0/d;->o(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    return v2

    .line 2
    :cond_e
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    iget v3, p0, Lb/c/a/a0/d$a;->b:I

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    const/4 v1, 0x0

    .line 3
    :goto_18
    iget v3, p0, Lb/c/a/a0/d$a;->b:I

    if-ge v1, v3, :cond_35

    .line 4
    iget-object v3, p0, Lb/c/a/a0/d$a;->c:Ljava/lang/Object;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 5
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_29

    goto :goto_32

    :cond_29
    if-eqz v3, :cond_32

    .line 6
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    return v2

    :cond_32
    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_35
    return v0
.end method
