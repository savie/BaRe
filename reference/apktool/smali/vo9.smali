.class public final Lvo9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbj9;


# static fields
.field public static final b:Lvo9;

.field public static final c:Lvo9;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lvo9;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lvo9;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lvo9;->b:Lvo9;

    .line 8
    .line 9
    new-instance v0, Lvo9;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lvo9;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lvo9;->c:Lvo9;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lvo9;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .locals 2

    .line 1
    iget p0, p0, Lvo9;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    if-eq p1, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    return v0

    .line 15
    :pswitch_0
    if-eqz p1, :cond_4

    .line 16
    .line 17
    if-eq p1, v1, :cond_3

    .line 18
    .line 19
    const/4 p0, 0x2

    .line 20
    if-eq p1, p0, :cond_2

    .line 21
    .line 22
    const/4 p0, 0x3

    .line 23
    if-eq p1, p0, :cond_1

    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    sget-object p0, Lwo9;->e:Lwo9;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    sget-object p0, Lwo9;->d:Lwo9;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_3
    sget-object p0, Lwo9;->c:Lwo9;

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_4
    sget-object p0, Lwo9;->b:Lwo9;

    .line 37
    .line 38
    :goto_1
    if-eqz p0, :cond_5

    .line 39
    .line 40
    move v0, v1

    .line 41
    :cond_5
    return v0

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
