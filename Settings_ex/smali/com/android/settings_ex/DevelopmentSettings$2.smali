.class final Lcom/android/settings_ex/DevelopmentSettings$2;
.super Lcom/android/settings_ex/search/BaseSearchIndexProvider;
.source "DevelopmentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DevelopmentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2359
    invoke-direct {p0}, Lcom/android/settings_ex/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method

.method private isShowingDeveloperOptions(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2362
    const-string/jumbo v0, "development"

    .line 2363
    const/4 v1, 0x0

    .line 2362
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2364
    const-string/jumbo v1, "show"

    .line 2365
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2362
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2383
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DevelopmentSettings$2;->isShowingDeveloperOptions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2384
    const/4 v1, 0x0

    return-object v1

    .line 2387
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2388
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/settings_ex/DevelopmentSettings;->-wrap1()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2389
    const-string/jumbo v1, "oem_unlock_enable"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2391
    :cond_1
    invoke-static {}, Lcom/android/settings_ex/DevelopmentSettings;->-wrap0()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2392
    const-string/jumbo v1, "enable_multi_window"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2394
    :cond_2
    return-object v0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2372
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DevelopmentSettings$2;->isShowingDeveloperOptions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2373
    const/4 v1, 0x0

    return-object v1

    .line 2376
    :cond_0
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 2377
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const v1, 0x7f08001d

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 2378
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
