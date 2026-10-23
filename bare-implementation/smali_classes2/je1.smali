.class public abstract Lje1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lai6;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lai6;

    .line 2
    .line 3
    const-string v1, "[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,}"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lai6;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lje1;->a:Lai6;

    .line 10
    .line 11
    return-void
.end method

.method public static final a(Lrd1;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lie1;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lq;->j()V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :pswitch_0
    const-string p0, "Skipped"

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_1
    const-string p0, "Action required"

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_2
    const-string p0, "Failed"

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_3
    const-string p0, "Passed"

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_4
    const-string p0, "Running"

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_5
    const-string p0, "Not run"

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final b(Lrd1;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lie1;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lq;->j()V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :pswitch_0
    const-string p0, "\u2796"

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_1
    const-string p0, "\u26a0\ufe0f"

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_2
    const-string p0, "\u274c"

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_3
    const-string p0, "\u2705"

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_4
    const-string p0, "\u2026"

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_5
    const-string p0, "\u25cb"

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
