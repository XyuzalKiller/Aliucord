.class public Ld0/g0/r;
.super Ld0/g0/q;
.source "StringNumberConversionsJVM.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld0/g0/q;-><init>()V

    return-void
.end method

.method public static final toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;
    .locals 3

    const-string v0, "$this$toDoubleOrNull"

    invoke-static {p0, v0}, Ld0/z/d/m;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_6
    sget-object v1, Ld0/g0/j;->a:Lkotlin/text/Regex;

    invoke-virtual {v1, p0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_16} :catch_17

    move-object v0, p0

    :catch_17
    :cond_17
    return-object v0
.end method

.method public static final toFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2

    const-string v0, "$this$toFloatOrNull"

    invoke-static {p0, v0}, Ld0/z/d/m;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_6
    sget-object v1, Ld0/g0/j;->a:Lkotlin/text/Regex;

    invoke-virtual {v1, p0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_16} :catch_17

    move-object v0, p0

    :catch_17
    :cond_17
    return-object v0
.end method
