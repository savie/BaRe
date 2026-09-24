.class public abstract synthetic Lps9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-static {v0}, Ldj7;->C(I)[I

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    array-length v0, v0

    .line 7
    new-array v0, v0, [I

    .line 8
    .line 9
    sput-object v0, Lps9;->b:[I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    :try_start_0
    aput v1, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    :catch_0
    const/4 v0, 0x2

    .line 15
    :try_start_1
    sget-object v2, Lps9;->b:[I

    .line 16
    .line 17
    aput v0, v2, v0
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 18
    .line 19
    :catch_1
    invoke-static {}, Lr0a;->values()[Lr0a;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    array-length v2, v2

    .line 24
    new-array v2, v2, [I

    .line 25
    .line 26
    sput-object v2, Lps9;->a:[I

    .line 27
    .line 28
    :try_start_2
    aput v1, v2, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 29
    .line 30
    :catch_2
    :try_start_3
    sget-object v1, Lps9;->a:[I

    .line 31
    .line 32
    aput v0, v1, v0
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 33
    .line 34
    :catch_3
    :try_start_4
    sget-object v0, Lps9;->a:[I

    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    aput v1, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 38
    .line 39
    :catch_4
    :try_start_5
    sget-object v0, Lps9;->a:[I

    .line 40
    .line 41
    const/4 v1, 0x4

    .line 42
    aput v1, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 43
    .line 44
    :catch_5
    return-void
.end method
