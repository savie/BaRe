.class public abstract Lcom/microsoft/identity/common/java/util/ported/DateUtilities;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final LOCALE_CHANGE_LOCK:Ljava/lang/Object;

.field private static final NON_GREGORIAN_CALENDAR_LOCALES:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/microsoft/identity/common/java/util/ported/DateUtilities;->LOCALE_CHANGE_LOCK:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashSet;

    .line 9
    .line 10
    const-string v12, "ur"

    .line 11
    .line 12
    const-string v13, "uz"

    .line 13
    .line 14
    const-string v1, "ar"

    .line 15
    .line 16
    const-string v2, "as"

    .line 17
    .line 18
    const-string v3, "bn"

    .line 19
    .line 20
    const-string v4, "dz"

    .line 21
    .line 22
    const-string v5, "fa"

    .line 23
    .line 24
    const-string v6, "ks"

    .line 25
    .line 26
    const-string v7, "mr"

    .line 27
    .line 28
    const-string v8, "my"

    .line 29
    .line 30
    const-string v9, "ne"

    .line 31
    .line 32
    const-string v10, "pa"

    .line 33
    .line 34
    const-string v11, "ps"

    .line 35
    .line 36
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/microsoft/identity/common/java/util/ported/DateUtilities;->NON_GREGORIAN_CALENDAR_LOCALES:Ljava/util/HashSet;

    .line 48
    .line 49
    return-void
.end method

.method public static isLocaleCalendarNonGregorian(Ljava/util/Locale;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lcom/microsoft/identity/common/java/util/ported/DateUtilities;->NON_GREGORIAN_CALENDAR_LOCALES:Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const-string p0, "inputLocale is marked non-null but is null"

    .line 15
    .line 16
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return p0
.end method
